"use strict";
const { sanitizeEntity } = require("strapi-utils");

/**
 * Read the documentation (https://strapi.io/documentation/developer-docs/latest/development/backend-customization.html#core-controllers)
 * to customize this controller
 */

module.exports = {
  async find(ctx) {
    let entities;
    const query = ctx.query;
    console.log(query);
    if (ctx.state.user && ctx.state.user.role.name === "customer") {
      const customer_info = await strapi.services.customers.findOne({
        user: ctx.state.user.id,
      });
      if (!customer_info) {
        ctx.response.badRequest("Customer information not found");
        return;
      }
      query["customer"] = customer_info.id;
    } else if (ctx.state.user && ctx.state.user.role.name === "salesperson") {
      const sales_info = await strapi.services["sales-person"].findOne({
        user: ctx.state.user.id,
      });
      if (!sales_info) {
        ctx.response.badRequest("Customer information not found");
        return;
      }
      query["salesperson"] = sales_info.id;
    }
    if (ctx.query._q) {
      entities = await strapi.services.transaction.search(query);
    } else {
      entities = await strapi.services.transaction.find(query);
    }
    await Promise.all(
      entities.map(async (item) => {
        if (item.salesperson) {
          item.salesperson_user = await strapi.services["sales-person"].findOne(
            {
              id: item.salesperson.id,
            }
          );
        }
        if (item.customer) {
          item.customer_user = await strapi.services["customers"].findOne({
            id: item.customer.id,
          });
        }
        await Promise.all(
          item.product_transactions.map(async (pt) => {
            if (pt.product) {
              pt.product = await strapi.services.product.findOne({
                id: pt.product,
              });
            }
          })
        );
      })
    );

    return entities.map((entity) =>
      sanitizeEntity(entity, { model: strapi.models.transaction })
    );
  },
  async purchase(ctx) {
    const customer_info = await strapi.services.customers.findOne({
      user: ctx.state.user.id,
    });
    if (!customer_info) {
      ctx.response.badRequest("Customer information not found");
      return;
    }

    const rawBuilder = strapi.connections.default.transaction(async (trx) => {
      await strapi.connections.default
        .raw(
          `INSERT INTO transactions (sale_date, salesperson, customer) VALUES (NOW(),?,?);`,
          [ctx.request.body.salesPerson, customer_info.id]
        )
        .transacting(trx);
      const targetStore = (
        await strapi.connections.default
          .raw(
            `SELECT st.id AS id, st.name AS name FROM sales_people s, stores st WHERE s.id=? AND s.store = st.id`,
            [ctx.request.body.salesPerson]
          )
          .transacting(trx)
      )[0][0];
      if (!targetStore) {
        throw `Can't find store associate with the salesperson`;
      }
      await strapi.connections.default
        .raw(`SET @TRANS_ID = LAST_INSERT_ID();`)
        .transacting(trx);
      const products = ctx.request.body.products;
      const productInfos = (
        await strapi.connections.default
          .raw(
            `SELECT p.id AS id, p.name AS name, p.price AS price
          FROM products p WHERE p.id in (${products
            .map((e) => "?")
            .join(",")});`,
            [...products.map((e) => e.id)]
          )
          .transacting(trx)
      )[0];
      const productInventories = (
        await strapi.connections.default
          .raw(
            `SELECT ps.product AS id, ps.amount AS inventory
          FROM product_stores ps WHERE ps.product in (${products
            .map((e) => "?")
            .join(",")}) AND ps.store=? FOR UPDATE;`,
            [...products.map((e) => e.id), targetStore.id]
          )
          .transacting(trx)
      )[0];
      const buyAmounts = {};
      for (const p of products) {
        const productInfo = productInfos.find((e) => e.id === p.id);
        const productInventory = productInventories.find((e) => e.id === p.id);
        if (!productInfo) {
          throw `Can't find product information about product with id ${p.id}`;
        }
        buyAmounts[p.id] = p.amount;
        if (!productInventory || p.amount > productInventory.inventory) {
          throw `${targetStore.name} doesn't have enough ${productInfo.name} in stock`;
        } else {
          await strapi.connections.default
            .raw(
              `UPDATE product_stores SET amount = amount - ? WHERE product = ? AND store = ?;`,
              [p.amount, p.id, targetStore.id]
            )
            .transacting(trx);
        }
      }
      await strapi.connections.default
        .raw(
          `INSERT INTO product_transactions(\`transaction\`, product, price, amount)
            VALUES ${productInfos
              .map((e) => "(@TRANS_ID, ?, ?, ?)")
              .join(",")};`,
          productInfos.map((e) => [e.id, e.price, buyAmounts[e.id]]).flat()
        )
        .transacting(trx);
      const res = await strapi.connections.default
        .raw(`SELECT * FROM transactions WHERE id = @TRANS_ID;`)
        .transacting(trx);
      return res;
    });

    const resp = await rawBuilder
      .then((values) => ({
        success: true,
        data: values,
      }))
      .catch((err) => {
        if (typeof err === "string") {
          return {
            success: false,
            msg: err,
          };
        } else {
          throw err;
        }
      });
    return resp;
  },
};
