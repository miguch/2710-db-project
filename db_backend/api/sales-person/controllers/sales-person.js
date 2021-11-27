"use strict";
const { sanitizeEntity } = require("strapi-utils");

/**
 * Read the documentation (https://strapi.io/documentation/developer-docs/latest/development/backend-customization.html#core-controllers)
 * to customize this controller
 */

module.exports = {
  async find(ctx) {
    let entities;
    entities = await strapi.services["sales-person"].find(ctx.query);

    entities.forEach((element) => {
      element.phone = element.user.phone;
    });
    return entities;
  },

  async update(ctx) {
    const { id } = ctx.params;

    let entity;
    entity = await strapi.services["sales-person"].update(
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
};
