var btn = document.getElementById("btn-loc");
var long = document.getElementById("longitude");
var lat = document.getElementById("latitude");

var x = document.getElementById("demo");

btn.addEventListener("click", getLocation);

function getLocation() {
  if (navigator.geolocation) {
    navigator.geolocation.getCurrentPosition(showPosition);
  } else {
    x.innerHTML = "Geolocation is not supported by this browser.";
  }
}

function showPosition(position) {
  lat.value = position.coords.latitude;
  long.value = position.coords.longitude;
}
