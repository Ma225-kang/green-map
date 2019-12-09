const previewParticipation = document.getElementById('mission_participation_proof');
const logoCamera = document.querySelector('.camera.participation');
const successSign = document.querySelector('.green-success.participation');
const textPictureMessage = document.querySelector('.take-picture-message-participation');
const wellDoneMessage = document.querySelector('.well-done-participation');

if (previewParticipation) {
previewParticipation.addEventListener('change', (event) => {
  logoCamera.style.display = 'none';
  successSign.style.display = 'block';
  textPictureMessage.style.display = 'none';
  wellDoneMessage.style.display = 'block';
})
}
