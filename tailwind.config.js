module.exports = {
  purge: {
    layers: ['base', 'components', 'utilities'],
    content: ['./views/**/*.html', './views/**/*.erb']
  },
  theme: {
    container: {
      center: true,
      padding: {
        default: '1.5rem',
        sm: '1.5rem',
        md: '3rem',
        lg: '6rem',
        xl: '8rem'
      }
    },
    extend: {
      colors: {
        brand: '#59b9f9',
        blue: {
          50: '#f6fafd',
          100: '#e8f5fd',
          200: '#c8e2fb',
          300: '#a5c9fb',
          400: '#779cfb',
          500: '#476dfa',
          600: '#314af6',
          700: '#283be3',
          800: '#202eb5',
          900: '#1a268d'
        },
        indigo: {
          50: '#f5f8fc',
          100: '#e9effc',
          200: '#d1d8fa',
          300: '#b7bbfa',
          400: '#988efa',
          500: '#7561fa',
          600: '#5940f6',
          700: '#4633e3',
          800: '#372ab9',
          900: '#2c2493'
        },
        purple: {
          50: '#f8f6fa',
          100: '#f5eaf9',
          200: '#ecccf6',
          300: '#e4aaf4',
          400: '#e079f1',
          500: '#dc4def',
          600: '#c430e4',
          700: '#9826c7',
          800: '#712099',
          900: '#591c76'
        },
        pink: {
          50: '#fcf9f9',
          100: '#fdeff4',
          200: '#fbd0e7',
          300: '#faa8d3',
          400: '#fb6eb0',
          500: '#fb438a',
          600: '#f62863',
          700: '#da1f4f',
          800: '#ac1a3d',
          900: '#871631'
        },
        red: {
          50: '#fcf9f8',
          100: '#fceff1',
          200: '#fad3e1',
          300: '#f9aec6',
          400: '#fa7799',
          500: '#fb4b6d',
          600: '#f42d4a',
          700: '#d7233e',
          800: '#aa1d34',
          900: '#86182b'
        },
        orange: {
          50: '#fbf7ef',
          100: '#fbf0db',
          200: '#f8e0b0',
          300: '#f5c771',
          400: '#f29f33',
          500: '#f17717',
          600: '#e3530f',
          700: '#c03e13',
          800: '#993118',
          900: '#7a2818'
        },
        yellow: {
          50: '#f7f6f2',
          100: '#fffff0',
          200: '#fefcbf',
          300: '#faf089',
          400: '#f6e05e',
          500: '#ecc94b',
          600: '#d69e2e',
          700: '#b7791f',
          800: '#975a16',
          900: '#744210'
        },
        green: {
          50: '#f4faf9',
          100: '#e9f8f3',
          200: '#ccf0e1',
          300: '#a2e3cb',
          400: '#57caa6',
          500: '#27ac7a',
          600: '#1d8b58',
          700: '#206e49',
          800: '#1e543d',
          900: '#1a4333'
        }
      }
    }
  },
  variants: {},
  plugins: [],
  options: {
    whitelist: ['bg-red-500', 'px-4']
  }
}
