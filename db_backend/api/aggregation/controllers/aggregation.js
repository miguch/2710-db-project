"use strict";

/**
 * Read the documentation (https://strapi.io/documentation/developer-docs/latest/development/backend-customization.html#core-controllers)
 * to customize this controller
 */

module.exports = {
  async saleProfit(ctx) {
    let entities = await strapi.connections.default.raw(
      `
      SELECT p.name, SUM(pt.amount) AS sales_volume, SUM(pt.price * pt.amount) AS total_profit
      FROM products p, product_transactions pt
      WHERE pt.product = p.id
      GROUP BY p.id
      ORDER BY SUM(pt.amount);
      `
    );
    return entities[0];
  },

  async topSaleCategory(ctx) {
    let entities = await strapi.connections.default.raw(
      `
      SELECT pk.name AS product_type, SUM(pt.amount) AS sales_volume, SUM(pt.price * pt.amount) AS total_profit
      FROM  product_transactions pt, products p, product_kinds pk
      WHERE pt.product = p.id AND p.product_type = pk.id
      GROUP BY p.product_type
      ORDER BY SUM(pt.amount);
      `
    );
    return entities[0];
  },

  async topRegions(ctx) {
    let entities = await strapi.connections.default.raw(
      `
      SELECT r.region_name as region, SUM(pt.amount) AS sales_volume, SUM(pt.price * pt.amount) AS total_profit
      FROM product_transactions pt, transactions t, sales_people s, regions r, stores st
      WHERE pt.transaction = t.id AND t.salesperson = s.id AND s.store = st.id AND st.region = r.id
      GROUP BY r.region_name
      ORDER BY SUM(pt.amount);
      `
    );
    return entities[0];
  },

  async topBusinesses(ctx) {
    let entities = await strapi.connections.default.raw(
      `
      SELECT p.name AS product_name, u.username AS customer_name, b.category AS business_category, SUM(pt.amount) AS sales_volume, SUM(pt.price * pt.amount) AS total_profit
      FROM products p, product_transactions pt, transactions t, customers c, business_customers b, \`users-permissions_user\` u
      WHERE p.name = ? AND p.id = pt.product AND pt.transaction = t.id AND t.customer = c.id AND c.business_customer = b.id AND u.id = c.user
      GROUP BY c.id
      ORDER BY sales_volume;
      `,
      [ctx.query.product]
    );
    return entities[0];
  },
};
