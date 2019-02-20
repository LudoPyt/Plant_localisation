var btn = document.getElementById("btn-loc");
var long = document.getElementById("longitude");
var lat = document.getElementById("latitude");
var alertLoc = document.getElementById("alert-localisation");

var x = document.getElementById("demo");

btn.addEventListener("click", getLocation);

function getLocation() {
  if (navigator.geolocation) {
    navigator.geolocation.getCurrentPosition(showPosition, showError);
    // navigator.geolocation.watchPosition(showPosition, showError);
  } else {
    alertLoc.innerHTML = "Geolocation is not supported by this browser.";
  }
}

function showPosition(position) {
  lat.value = position.coords.latitude;
  long.value = position.coords.longitude;
  lat.disabled = true;
  long.disabled = true;
}

function showError(error) {
  switch(error.code) {
    case error.PERMISSION_DENIED:
      alertLoc.innerHTML = "User denied the request for Geolocation."
      break;
    case error.POSITION_UNAVAILABLE:
      alertLoc.innerHTML = "Location information is unavailable."
      break;
    case error.TIMEOUT:
      alertLoc.innerHTML = "The request to get user location timed out."
      break;
    case error.UNKNOWN_ERROR:
      alertLoc.innerHTML = "An unknown error occurred."
      break;
  }
}
