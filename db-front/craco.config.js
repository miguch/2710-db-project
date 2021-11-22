const CracoLessPlugin = require('craco-less');

module.exports = {
  devServer: {
    proxy: {
      '/api/**': {
        target: 'http://localhost:1337',
        changeOrigin: true,
        pathRewrite: { '^/api': '' }
      }
    }
  },
  plugins: [
    {
      plugin: CracoLessPlugin,
      options: {
        lessLoaderOptions: {
          lessOptions: {
            modifyVars: { dark: true },
            javascriptEnabled: true
          }
        }
      }
    }
  ]
};
