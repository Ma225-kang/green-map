const previewParticipation = document.getElementById('mission_participation_proof');

const logoCamera = document.querySelector('.camera.participation');
const successSign = document.querySelector('.green-success.proof');

const textPictureMessage = document.querySelector('.take-picture-message-participation');
const wellDoneMessage = document.querySelector('.well-done-participation');

const errorSign = document.querySelector('.error-no-picture.proof');
const errorMessage = document.querySelector('.error-picture-message.proof');

if (previewParticipation) {
  previewParticipation.addEventListener('change', (event) => {
    logoCamera.style.display = 'none';
    textPictureMessage.style.display = 'none';
    errorSign.style.display = 'none';
    errorMessage.style.display = 'none';
    successSign.style.display = 'block';
    wellDoneMessage.style.display = 'block';
  })
}
