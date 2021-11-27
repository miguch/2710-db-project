"use strict";

/**
 * Read the documentation (https://strapi.io/documentation/developer-docs/latest/development/backend-customization.html#core-controllers)
 * to customize this controller
 */

module.exports = {

  async find(ctx) {
    let entities;
    entities = await strapi.services["customers"].find(ctx.query);

    entities.forEach((element) => {
      element.phone = element.user.phone;
    });
    return entities;
  },

  async update(ctx) {
    const { id } = ctx.params;

    let entity;
    entity = await strapi.services["customers"].update(
      { id },
      ctx.request.body
    );

    if (ctx.request.body.phone) {
      // update phone
      await strapi
        .query("user", "users-permissions")
        .update(
          { id: entity.user.id },
          { phone: ctx.request.body.phone }
        );
    }
    return entity;
  },

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
