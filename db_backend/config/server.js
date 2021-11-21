module.exports = ({ env }) => ({
  host: env('HOST', '0.0.0.0'),
  port: env.int('PORT', 1337),
  url: env("DB_BASEURL", ''),
  admin: {
    auth: {
      secret: env('ADMIN_JWT_SECRET', '15e8521a6d81342c4ca7cafc20a79985'),
    },
  },
});
