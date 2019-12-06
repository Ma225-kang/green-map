
const geolocateUser = () => {

  var options = {
    enableHighAccuracy: true,
    timeout: 5000,
    maximumAge: 0
  };

  function success(pos) {

    var crd = pos.coords;
    console.log(pos);
    location = crd.cookies;
    console.log(location);
    console.log('Votre position actuelle est :');
    console.log(`Latitude : ${crd.latitude}`);
    console.log(`Longitude : ${crd.longitude}`);
    console.log(`La précision est de ${crd.accuracy} mètres.`);

  // // <!-- CREATE COOKIE  -->
  //   let longitude = crd.longitude;
  //   let latitude = crd.latitude;
  //   let accuracy = crd.accuracy;

  //   function createCookie(longitude, latitude, accuracy) {
  //     let cookie = "longitude:" = escape(longitude) + ";";
  //     document.cookie = cookie;
  //     console.log(cookie);
  //     console.log("cookie time!")
  //   }

  }

  function error(err) {
    console.warn(`ERREUR (${err.code}): ${err.message}`);
  }

  navigator.geolocation.getCurrentPosition(success, error, options);

}

export { geolocateUser };

