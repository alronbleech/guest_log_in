const { environment } = require('@rails/webpacker')

module.exports = environment

const webpack = require('webpack')
environment.plugins.prepend(
  'Provid',
  new webpack.ProvidePlugin({
    $: 'jquery/src/jquery',
    jQuary: 'jquery/src/jquery',
    Popper: 'popper.js'
  })
)