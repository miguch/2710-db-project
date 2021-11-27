"use strict";

/**
 * Read the documentation (https://strapi.io/documentation/developer-docs/latest/development/backend-customization.html#core-controllers)
 * to customize this controller
 */

module.exports = {
  async delete(ctx) {
    const { id } = ctx.params;

    let entity;
    await strapi.connections.default.transaction(async (trx) => {
      entity = await strapi.query('customers').delete(
        { id },
        { transacting: trx }
      );
      await strapi
        .query("user", "users-permissions")
        .delete({ id: entity.user.id }, { transacting: trx });
      if (entity.business_customer) {
        await strapi.query('business-customer').delete(
          { id: entity.business_customer.id },
          { transacting: trx }
        );
      }
      if (entity.home_customer) {
        await strapi.query('home_customer').delete(
          { id: entity.home_customer.id },
          { transacting: trx }
        );
      }
    });

    return entity;
  },
};
