// Place all the behaviors and hooks related to the matching controller here.
// All this logic will automatically be available in application.js.

document.addEventListener("turbolinks:load", function() {
  $("#your-location-btn").click(function(){
    // Try HTML5 geolocation.
    if (navigator.geolocation) {
      navigator.geolocation.watchPosition(function(position) {
        var pos = {
          lat: position.coords.latitude,
          lng: position.coords.longitude
        };
        $("#wish_location_attributes_longitude").val(pos.lng);
        $("#wish_location_attributes_latitude").val(pos.lat);
      });
    } else {
      // Browser doesn't support Geolocation
      console.log("No geolocation");
    };
  });
});
