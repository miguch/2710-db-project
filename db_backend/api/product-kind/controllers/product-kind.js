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
      // use foreign key constraint
      entity = await strapi
        .query("product-kind")
        .findOne({ id }, { transacting: trx });
      await strapi.connections.default
        .raw(`DELETE FROM \`product_kinds\` WHERE id=?`, [id])
        .transacting(trx);
    });

    return entity;
  },
};
