document.querySelectorAll('.trash-type-selection-wrapper label').forEach(item => {
  item.addEventListener('click', event => {
    item.classList.toggle('trash-type-active');
  });
});
