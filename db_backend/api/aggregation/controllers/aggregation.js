'use strict';

/**
 * Read the documentation (https://strapi.io/documentation/developer-docs/latest/development/backend-customization.html#core-controllers)
 * to customize this controller
 */



module.exports = {
  async saleProfit(ctx) {
    let entities = await strapi.connections.default.raw(
      `
      SELECT p.name, count(*) AS sales_volume, sum(tp.price * tp.amount) AS total_profit
      FROM transactions t, products p, product_transactions tp
      WHERE tp.product = p.id AND tp.transaction = t.id
      GROUP BY p.id;
      `
    );
    console.log(entities[0]);
    return entities[0];
  },

  async topSaleCategory(ctx) {
    let entities = await strapi.connections.default.raw(
      `
      select p.name, count(*) as sales_volume, sum(p.price) as total_profit
      from transactions t, products p
      where t.product_id = p.id
      group by p.id;
      `
    );
    console.log(entities[0]);
    return entities[0];
  }
};
