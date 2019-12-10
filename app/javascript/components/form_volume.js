const selectVolume = (e) => {
  const labels = document.querySelectorAll('.volume-level-selection-wrapper label');

  labels.forEach((label) => {
    label.classList.remove('volume-active');
  });
  e.currentTarget.classList.add('volume-active');
};

const listenForVolumeSelection = () => {
  const labels = document.querySelectorAll('.volume-level-selection-wrapper label');

  if (labels.length != 0) {
    labels.forEach((label) => {
      label.addEventListener('click', selectVolume)
    });
  }
}

export { listenForVolumeSelection };

