const picture = document.querySelector('.picture-mapmaster');

if(picture) {
  picture.addEventListener('click', event => {
    picture.classList.toggle('picture-mapmaster-active');
  });
}
