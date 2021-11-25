'use strict';

/**
 * Read the documentation (https://strapi.io/documentation/developer-docs/latest/development/backend-customization.html#core-controllers)
 * to customize this controller
 */



module.exports = {
  async saleProfit(ctx) {
    let entities = await strapi.connections.default.raw(
      `
      select p.name, count(*) as sales_volume, sum(p.price) as total_profit
      from transactions t, pds p
      where t.product_id = p.id
      group by p.pd_id;
      `
    );
    console.log(entities[0]);
    return [];
  }
};
