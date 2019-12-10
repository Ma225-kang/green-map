import places from 'places.js';

const initAutocomplete = () => {
  const addressInput = document.getElementById('search-by-location');
  if (addressInput) {
    places({ container: addressInput });
  }
};

export { initAutocomplete };
