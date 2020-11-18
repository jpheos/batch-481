import mapboxgl from 'mapbox-gl'; // or "const mapboxgl = require('mapbox-gl');"
import MapboxGeocoder from '@mapbox/mapbox-gl-geocoder';

const fitMapToMarkers = (map, markersData) => {
  const bounds = new mapboxgl.LngLatBounds();
  markersData.forEach(markerData => bounds.extend([ markerData.lng, markerData.lat ]));
  map.fitBounds(bounds, { padding: 70, maxZoom: 15, duration: 0 });
};


const addMarkers = (map, markersData) => {
  markersData.forEach((markerData) => {


    const element = document.createElement('div');
    element.className = 'marker';
    element.style.backgroundImage = `url('${markerData.image_url}')`;
    element.style.backgroundSize = 'contain';
    element.style.width = '25px';
    element.style.height = '25px';


    const marker = new mapboxgl.Marker(element)
      .setLngLat([markerData.lng, markerData.lat])
      .setPopup(new mapboxgl.Popup().setHTML(markerData.popup))
      .addTo(map);
  })
}


const initMapbox = () => {
  const mapElement = document.querySelector('#map')

  if (mapElement == null)
    return

  const markersData = JSON.parse(mapElement.dataset.markers)

  mapboxgl.accessToken = mapElement.dataset.mapboxApiKey
  const map = new mapboxgl.Map({
    container: 'map',
    style: 'mapbox://styles/jpheos481/ckhn6vbip0knu19piad32iiok', // stylesheet location
    center: [-74.5, 40], // starting position [lng, lat]
    zoom: 9 // starting zoom
  });

  map.addControl(new MapboxGeocoder({ accessToken: mapboxgl.accessToken,
                                      mapboxgl: mapboxgl }));

  addMarkers(map, markersData)
  fitMapToMarkers(map, markersData)
}

export default initMapbox


