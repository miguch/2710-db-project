"use strict";

/**
 * Read the documentation (https://strapi.io/documentation/developer-docs/latest/development/backend-customization.html#core-controllers)
 * to customize this controller
 */

module.exports = {
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
            .join(",")})`,
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
    console.log(resp);
    return resp;
  },
};
