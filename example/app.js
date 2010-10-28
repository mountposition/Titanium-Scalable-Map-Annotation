// This is a test harness for your module
// You should do something interesting in this harness 
// to test out the module and to provide instructions 
// to users on how to use it by example.


// open a single window
var window = Ti.UI.createWindow({
  backgroundColor:'white'
});


// TODO: write your module tests here
var module = require('jp.co.mountposition.map');
Ti.API.info("module is => " + module);

var map = module.createMapView();

Titanium.Geolocation.addEventListener("location", function(e) {
  map.location = {
    latitude: e.coords.latitude,
    longitude: e.coords.longitude
  };

  var ann = Titanium.Map.createAnnotation({
    title: "テスト",
    latitude: e.coords.latitude,
    longitude: e.coords.longitude,
    image: "fire.png"
//    scale: 6.0 
  });
  map.addAnnotation(ann);
});

window.add(map);
window.open();
