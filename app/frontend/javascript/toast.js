import Toastify from 'toastify-js'
import 'toastify-js/src/toastify.css'

window.toast = (msg, type) => {
  let toastType
  switch (type) {
    case 'notice':
      toastType = '#57caa6'
      break
    case 'success':
      toastType = '#57caa6'
      break
    case 'danger':
      toastType = '#fb4b6d'
      break
    default:
      toastType = '#59b9f9'
      break
  }

  Toastify({
    text: msg,
    duration: 3000,
    newWindow: true,
    close: true,
    gravity: 'top', // `top` or `bottom`
    position: 'center', // `left`, `center` or `right`
    backgroundColor: toastType,
    stopOnFocus: true, // Prevents dismissing of toast on hover
    onClick: function () {} // Callback after click
  }).showToast()
}
