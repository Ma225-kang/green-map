const labels = document.querySelectorAll('.place_after-level-selection-wrapper label');

const selectVol2 = (e) => {
  labels.forEach((label) => {
    label.classList.remove('vol2-active');
  });
  e.currentTarget.classList.add('vol2-active');
};

labels.forEach((label) => {
  label.addEventListener('click', selectVol2)
});

export { selectVol2 };

