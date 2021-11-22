const CracoLessPlugin = require('craco-less');

module.exports = {
  devServer: {
    proxy: {
        '/api': 'http://localhost:1337'
    }
  },
  plugins: [
    {
      plugin: CracoLessPlugin,
      options: {
        lessLoaderOptions: {
          lessOptions: {
            modifyVars: { dark: true, },
            javascriptEnabled: true,
          },
        },
      },
    },
  ],
};