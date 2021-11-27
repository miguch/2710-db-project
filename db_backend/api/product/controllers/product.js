"use strict";

/**
 * Read the documentation (https://strapi.io/documentation/developer-docs/latest/development/backend-customization.html#core-controllers)
 * to customize this controller
 */

module.exports = {
  async find(ctx) {
    let entities;
    if (ctx.query._q) {
      entities = await strapi.services.product.search(ctx.query);
    } else {
      entities = await strapi.services.product.find(ctx.query);
    }
    if (ctx.state.user && ctx.state.user.role.name === "salesperson") {
      const sales_info = await strapi.services["sales-person"].findOne({
        user: ctx.state.user.id,
      });
      if (sales_info && sales_info.store) {
        await Promise.all(
          entities.map(async (entity) => {
            const record = await strapi.services["product-store"].findOne({
              product: entity.id,
              store: sales_info.store.id,
            });
            entity.amount = record ? record.amount : 0;
          })
        );
      }
    }

    return entities;
  },

  async create(ctx) {
    let entity, sales_info;
    if (ctx.state.user && ctx.state.user.role.name === "salesperson") {
      sales_info = await strapi.services["sales-person"].findOne({
        user: ctx.state.user.id,
      });
    }
    if (!sales_info) {
      ctx.response.badRequest("Customer information not found");
      return;
    }
    await strapi.connections.default.transaction(async (trx) => {
      entity = await strapi
        .query("product")
        .create(ctx.request.body, { transacting: trx });

      // create inventory records for user's store.
      await strapi.query("product-store").create(
        {
          product: entity.id,
          store: sales_info.store.id,
          amount: ctx.request.body.amount,
        },
        { transacting: trx }
      );
    });
    return entity;
  },
  async update(ctx) {
    const { id } = ctx.params;

    let entity, sales_info;
    if (ctx.state.user && ctx.state.user.role.name === "salesperson") {
      sales_info = await strapi.services["sales-person"].findOne({
        user: ctx.state.user.id,
      });
    }
    if (!sales_info) {
      ctx.response.badRequest("Customer information not found");
      return;
    }

    await strapi.connections.default.transaction(async (trx) => {
      entity = await strapi.query("product").update({ id }, ctx.request.body);

      // delete then create new inventory record because it might not exist before
      console.log({
        product: entity.id,
        store: sales_info.store,
      });
      await strapi.query("product-store").delete(
        {
          product: entity.id,
          store: sales_info.store.id,
        },
        { transacting: trx }
      );
      await strapi.query("product-store").create(
        {
          product: entity.id,
          store: sales_info.store.id,
          amount: ctx.request.body.amount,
        },
        { transacting: trx }
      );
    });
    return entity;
  },
};
