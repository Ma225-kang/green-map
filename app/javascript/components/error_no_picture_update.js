const mapMasterPhotoIsInvalid = () => {
  const mapMasterPhoto = document.getElementById('mission_mapmaster_photo');
  return mapMasterPhoto.value.length == 0;
};

const missionProofValueIsInvalid = () => {
  const missionProof = document.getElementById('mission_participation_proof');
  return missionProof.value.length == 0;
};

const validationFormPictures = (event) => {
  // for proof error
  const logoCamera = document.querySelector('.camera.participation');
  const textPictureMessage = document.querySelector('.take-picture-message-participation');

  const logoCameraMapMaster = document.querySelector('.camera.mapmaster');
  const textPictureMessageMapMaster = document.querySelector('.take-picture-message.mapmaster');

  const errorSignMapMaster = document.querySelector('.error-no-picture.mapmaster');
  const errorMessageMapMaster = document.querySelector('.error-picture-message.mapmaster');

  const errorSignProof = document.querySelector('.error-no-picture.proof');
  const errorMessageProof = document.querySelector('.error-picture-message.proof');

  const successSign = document.querySelector('.green-success');
  const wellDoneMessage = document.querySelector('.well-done-participation');


  if (mapMasterPhotoIsInvalid()) {
    logoCameraMapMaster.style.display = 'none';
    textPictureMessageMapMaster.style.display = 'none';
    errorSignMapMaster.style.display = 'block';
    errorMessageMapMaster.style.display = 'block';
    event.preventDefault();
  }

  if (missionProofValueIsInvalid()) {
    logoCamera.style.display = 'none';
    textPictureMessage.style.display = 'none';
    errorSignProof.style.display = 'block';
    errorMessageProof.style.display = 'block';
    event.preventDefault();
  }

  const missionSubmit   = document.getElementById('submit-mission-review');
  setTimeout(() => {
    missionSubmit.disabled = false
  }, 1000);

  if (!mapMasterPhotoIsInvalid() && !missionProofValueIsInvalid()) {
    logoCamera.style.display = 'none';
    textPictureMessage.style.display = 'none';
    successSign.style.display = 'block';
    wellDoneMessage.style.display = 'block';
  }
};


const listenForFormSubmit = () => {
  const submitForm = document.querySelector('.new-form');

  if (submitForm) {
    submitForm.addEventListener('submit', validationFormPictures);
  }
};

export { listenForFormSubmit };

