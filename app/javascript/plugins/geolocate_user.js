const geolocateUser = () => {


  const button = document.getElementById('geolocate_me');

  if (button) {
    button.addEventListener('click', (event) => {
      // Callback
      navigator.geolocation.getCurrentPosition(success, error, options);
    })
  }

  var options = {
    enableHighAccuracy: true,
    timeout: 5000,
    maximumAge: 0
  };

  function success(pos) {

      // <!-- CREATE COOKIE  -->

    var crd = pos.coords;

    let longitude = crd.longitude;
    let latitude  = crd.latitude;

    document.cookie = `latitude=${latitude}`
    document.cookie = `longitude=${longitude}`

    window.location = button.dataset.nextPageUrl
  }

  function error(err) {
    console.warn(`ERREUR (${err.code}): ${err.message}`);
  }
}

export { geolocateUser }

