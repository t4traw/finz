window.previewImage = function (el, target) {
  const file = el.files[0]
  const blobUrl = window.URL.createObjectURL(file)
  const img = document.getElementById(target)
  img.src = blobUrl
}
