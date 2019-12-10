const listenForMissionSelection = (e) => {
  const labels = document.querySelectorAll('.place_after-level-selection-wrapper label');

  labels.forEach((label) => {
    label.classList.remove('vol2-active');
  });
  e.currentTarget.classList.add('vol2-active');
};

const listenForVolumeLeftSelection = () => {
  const labels = document.querySelectorAll('.place_after-level-selection-wrapper label');

  if (labels.length != 0) {
    labels.forEach((label) => {
      label.addEventListener('click', listenForMissionSelection)
    });
  }
}



export { listenForVolumeLeftSelection };
