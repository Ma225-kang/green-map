const displayModalIfErrors = () => {
  const bootstrapModal = $(document.querySelector('#goOnMissionModal'))
  const modalHTML      = bootstrapModal[0]

  if (modalHTML && modalHTML.dataset.hasErrors == "true") {
    bootstrapModal.modal('show')
  }
}

export { displayModalIfErrors }
