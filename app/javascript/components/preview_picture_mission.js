const previewMission = document.getElementById('mission_mapmaster_photo');
const logoCamera = document.querySelector('.camera');
const successSign = document.querySelector('.green-success');
const textPictureMessage = document.querySelector('.take-picture-message');
const wellDoneMessage = document.querySelector('.well-done');

if (previewMission) {
previewMission.addEventListener('change', (event) => {
  logoCamera.style.display = 'none';
  successSign.style.display = 'block';
  textPictureMessage.style.display = 'none';
  wellDoneMessage.style.display = 'block';
})
}
