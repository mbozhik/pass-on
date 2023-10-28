const defaultTheme = require('tailwindcss/defaultTheme')

module.exports = {
  content: ['./public/*.html', './app/helpers/**/*.rb', './app/javascript/**/*.js', './app/views/**/*.{erb,haml,html,slim}'],
  theme: {
    extend: {
      fontFamily: {
        sans: ['Inter var', ...defaultTheme.fontFamily.sans],
      },
      colors: {
        custom: {
          orange: '#FF8D3A',
          gray: '#6B6B6B',
          grey: '#373737',
        },
      },
    },
    screens: {
      xl: {max: '1536px'},
      lg: {max: '1280px'},
      sm: {max: '768px'},
      xs: {max: '350px'},
    },
  },
  plugins: [require('@tailwindcss/forms'), require('@tailwindcss/aspect-ratio'), require('@tailwindcss/typography'), require('@tailwindcss/container-queries')],
}
