<!DOCTYPE html>
<html>
  <head>
    <title>Place details</title>
    <meta name="viewport" content="initial-scale=1.0, user-scalable=no">
    <meta charset="utf-8">
    <style>
      html, body, #map-canvas {
        height: 100%;
        margin: 0px;
        padding: 0px
      }
    </style>
    <script src="https://maps.googleapis.com/maps/api/js?v=3.exp&sensor=false&libraries=places"></script>
    <script>
function initialize() {
  var map = new google.maps.Map(document.getElementById('map-canvas'), {
    center: new google.maps.LatLng(10.791811200109255, 106.69101119041443),
    zoom: 17
  });

  var request = {
    reference: 'CnRkAAAAGnBVNFDeQoOQHzgdOpOqJNV7K9-c5IQrWFUYD9TNhUmz5-aHhfqyKH0zmAcUlkqVCrpaKcV8ZjGQKzB6GXxtzUYcP-muHafGsmW-1CwjTPBCmK43AZpAwW0FRtQDQADj3H2bzwwHVIXlQAiccm7r4xIQmjt_Oqm2FejWpBxLWs3L_RoUbharABi5FMnKnzmRL2TGju6UA4k'
  };

  var infowindow = new google.maps.InfoWindow();
  var service = new google.maps.places.PlacesService(map);

  service.getDetails(request, function(place, status) {
    if (status == google.maps.places.PlacesServiceStatus.OK) {
      var marker = new google.maps.Marker({
        map: map,
        position: place.geometry.location
      });
      google.maps.event.addListener(marker, 'click', function() {
        infowindow.setContent(place.name);
        infowindow.open(map, this);
      });
    }
  });
}

google.maps.event.addDomListener(window, 'load', initialize);

    </script>
  </head>
  <body>
    <div id="map-canvas"></div>
  </body>
</html>