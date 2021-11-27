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
      const salse_info = await strapi.services["sales-person"].findOne({
        user: ctx.state.user.id,
      });
      if (!salse_info) {
        ctx.response.badRequest("Customer information not found");
        return;
      }
      query["salesperson"] = salse_info.id;
    }
    if (ctx.query._q) {
      entities = await strapi.services.transaction.search(query);
    } else {
      entities = await strapi.services.transaction.find(query);
    }
    await Promise.all(
      entities.map(async (item) => {
        if (item.salesperson) {
          item.salesperson_user = await strapi.services["sales-person"].findOne({
            id: item.salesperson.id
          });
        }
        if (item.customer) {
          item.customer_user = await strapi.services["customers"].findOne({
            id: item.customer.id
          });
        }
        await Promise.all(
          item.product_transactions.map(async (pt) => {
            pt.product = await strapi.services.product.findOne({id: pt.product});
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
      await strapi.connections.default
        .raw(`SET @TRANS_ID = LAST_INSERT_ID();`)
        .transacting(trx);
      const products = ctx.request.body.products;
      const productAmounts = await strapi.connections.default
        .raw(
          `SELECT id, name, amount as inventory, price FROM products WHERE id in (${products
            .map((e) => "?")
            .join(",")}) FOR UPDATE;`,
          products.map((e) => e.id)
        )
        .transacting(trx);
      const buyAmounts = {};
      for (const p of productAmounts[0]) {
        const buyAmount = products.find((e) => e.id === p.id).amount;
        buyAmounts[p.id] = buyAmount;
        if (buyAmount > p.inventory) {
          throw `${p.name} doesn't have enough items in stock`;
        } else {
          await strapi.connections.default
            .raw(`UPDATE products SET amount = amount - ? WHERE id = ?;`, [
              buyAmount,
              p.id,
            ])
            .transacting(trx);
        }
      }
      await strapi.connections.default
        .raw(
          `INSERT INTO product_transactions(\`transaction\`, product, price, amount)
            VALUES ${productAmounts[0]
              .map((e) => "(@TRANS_ID, ?, ?, ?)")
              .join(",")};`,
          productAmounts[0].map((e) => [e.id, e.price, buyAmounts[e.id]]).flat()
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
