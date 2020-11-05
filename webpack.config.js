const path = require('path')
const WebpackAssetsManifest = require('webpack-assets-manifest')
const MiniCssExtractPlugin = require('mini-css-extract-plugin')
const OptimizeCSSAssetsPlugin = require('optimize-css-assets-webpack-plugin')
const TerserPlugin = require('terser-webpack-plugin')

const { NODE_ENV } = process.env
const isProd = NODE_ENV === 'production'

module.exports = {
  devtool: 'source-map',
  mode: isProd ? 'production' : 'development',
  entry: {
    application: path.resolve(__dirname, 'app/frontend/application.js'),
    tagedit: path.resolve(__dirname, 'app/frontend/tagedit.js'),
    splide: path.resolve(__dirname, 'app/frontend/splide.js')
  },
  output: {
    path: path.resolve(__dirname, 'public/frontend'),
    publicPath: isProd ? '/frontend/' : '//localhost:8081/frontend/',
    filename: isProd ? '[name]-[hash].js' : '[name].js'
  },
  resolve: {
    extensions: ['.js']
  },
  devServer: {
    contentBase: path.resolve(__dirname, 'public'),
    publicPath: '/frontend/',
    host: 'localhost',
    port: 8081,
    headers: {
      'Access-Control-Allow-Origin': '*'
    }
  },
  plugins: [
    new WebpackAssetsManifest({ publicPath: true, writeToDisk: true }),
    new MiniCssExtractPlugin({
      filename: isProd ? '[name]-[hash].css' : '[name].css'
    })
  ],
  optimization: {
    minimizer: [new TerserPlugin(), new OptimizeCSSAssetsPlugin({})]
  },
  module: {
    rules: [
      {
        test: /\.(jsx)$/,
        use: ['babel-loader']
      },
      {
        test: /\.(pcss)$/,
        use: [
          MiniCssExtractPlugin.loader,
          {
            loader: 'css-loader',
            options: {
              url: true,
              importLoaders: 1
            }
          },
          'postcss-loader'
        ]
      },
      {
        test: /\.(css|scss|sass)$/,
        use: ['style-loader', 'css-loader', 'sass-loader']
      }
    ]
  }
}
