const previewMission = document.getElementById('mission_mapmaster_photo');

const logoCamera = document.querySelector('.camera');
const successSign = document.querySelector('.green-success');

const textPictureMessage = document.querySelector('.take-picture-message');
const wellDoneMessage = document.querySelector('.well-done');

const errorSign = document.querySelector('.error-no-picture.mapmaster');
const errorMessage = document.querySelector('.error-picture-message.mapmaster');

if (previewMission) {
previewMission.addEventListener('change', (event) => {
  logoCamera.style.display = 'none';
  textPictureMessage.style.display = 'none';
  errorSign.style.display = 'none';
  errorMessage.style.display = 'none';
  successSign.style.display = 'block';
  wellDoneMessage.style.display = 'block';
})
}
