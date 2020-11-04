import Splide from '@splidejs/splide'
import '@splidejs/splide/dist/css/splide.min.css'

function getPerPage() {
  if (window.matchMedia && window.matchMedia('(max-device-width: 640px)').matches) {
    return 1
  } else {
    return 3
  }
}

new Splide('.splide', {
  type: 'loop',
  padding: '2em',
  pagination: false,
  perPage: getPerPage()
}).mount()
