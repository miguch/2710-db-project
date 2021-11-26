module.exports = ({ env }) => ({
  defaultConnection: 'default',
  connections: {
    default: {
      connector: 'bookshelf',
      settings: {
        client: 'mysql',
        host: env('DATABASE_HOST', 
          process.env.DB_URL|| 'localhost'),
        port: env.int('DATABASE_PORT', 3306),
        database: env('DATABASE_NAME', 'final'),
        username: env('DB_USERNAME', 'root'),
        password: env('DB_PASSWORD', '123456'),
        ssl: env.bool('DATABASE_SSL', false),
        multipleStatements: true
      },
      options: {}
    },
  },
});
