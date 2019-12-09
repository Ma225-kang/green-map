const participationProof = document.querySelector('.picture-participation-proof');

if (participationProof) {
  participationProof.addEventListener('click', event => {
    participationProof.classList.toggle('picture-mapmaster-active');
  });
}
