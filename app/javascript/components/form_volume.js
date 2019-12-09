const labels = document.querySelectorAll('.volume-level-selection-wrapper label');

const selectVolume = (e) => {
  labels.forEach((label) => {
    label.classList.remove('volume-active');
  });
  e.currentTarget.classList.add('volume-active');
};

labels.forEach((label) => {
  label.addEventListener('click', selectVolume)
});

export { selectVolume };

