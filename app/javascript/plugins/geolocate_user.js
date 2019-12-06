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
    let latitude = crd.latitude;
    let lng = "longitude" + "=" + longitude + ";";
    let lat = "latitude" + "=" + latitude + ";";
    document.cookie = lng;
    document.cookie = lat;
    location = "/places/new";
  }

  //   if (lng && lat) {
  //   } else {
  //     alert("We can't geolocate you, :(");
  //     location = "/home"
  // }

  function error(err) {
    console.warn(`ERREUR (${err.code}): ${err.message}`);
  }
}

export { geolocateUser }

