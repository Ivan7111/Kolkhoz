import 'ol/ol.css';
import Map from 'ol/Map';
import OSM from 'ol/source/OSM';
import TileLayer from 'ol/layer/Tile';
import View from 'ol/View';

const map = new ol.Map({
  target: 'map',
  layers: [
    new ol.layer.Tile({
      source: new ol.source.OSM()
    })
  ],
  controls: [],
  interactions: [],
  view: new ol.View({
    center: ol.proj.fromLonLat([28.34, 53.90]),
    zoom: 7
  })
});
map.on('click', function (e) {
  var lonlat = ol.proj.transform(e.coordinate, 'EPSG:3857', 'EPSG:4326');
  //alert(lonlat);
  document.getElementById("longitude").value = lonlat[1];
  document.getElementById("latitude").value = lonlat[0];
});