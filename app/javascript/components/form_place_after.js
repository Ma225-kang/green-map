const labels = document.querySelectorAll('.place_after-level-selection-wrapper label');

const selectVolume = (e) => {
  labels.forEach((label) => {
    label.classList.remove('vol2-active');
  });
  e.currentTarget.classList.add('vol2-active');
};

labels.forEach((label) => {
  label.addEventListener('click', selectVolume)
});

export { selectVolume };

