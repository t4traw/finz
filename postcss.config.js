const purgecss = require('@fullhuman/postcss-purgecss')({
  content: ['./app/views/**/*'],
  defaultExtractor: (content) => content.match(/[\w-/:]+(?<!:)/g) || []
})

module.exports = {
  plugins: [
    require('tailwindcss'),
    require('autoprefixer'),
    require('postcss-mixins'),
    require('postcss-simple-vars'),
    require('postcss-color-function'),
    require('postcss-nesting'),
    require('postcss-custom-media'),
    require('postcss-media-minmax'),
    require('postcss-preset-env')({
      autoprefixer: {
        flexbox: 'no-2009'
      },
      stage: 3
    }),
    ...(process.env.NODE_ENV === 'production' ? [purgecss] : [])
  ]
}
