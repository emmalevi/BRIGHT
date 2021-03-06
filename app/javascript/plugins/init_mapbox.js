import mapboxgl from 'mapbox-gl';

const mapElement = document.getElementById('map');

const buildMap = () => {
  mapboxgl.accessToken = mapElement.dataset.mapboxApiKey;
  return new mapboxgl.Map({
    container: 'map',
    style: 'mapbox://styles/emmalevi/ck9quneh60hww1inx3lg50ln4'
  });
};


const addMarkersToMap = (map, markers) => {
  markers.forEach((marker) => {

    const popup = new mapboxgl.Popup({ offset: 25 })
      .setHTML(marker.infoWindow);
    const element = document.createElement('div');
    element.className = 'marker';
    element.style.backgroundImage = `url('${marker.image_url}')`;
    element.style.backgroundSize = 'contain';
    element.style.width = '30px';
    element.style.height = '30px';

    new mapboxgl.Marker(element)
      .setLngLat([ marker.lng, marker.lat ])
      .setPopup(popup)
      .addTo(map);
  });
};


const fitMapToMarkers = (map, markers) => {
  const bounds = new mapboxgl.LngLatBounds();
  markers.forEach(marker => bounds.extend([ marker.lng, marker.lat ]));
  map.fitBounds(bounds, { padding: 70, maxZoom: 15 });
};

const initMapbox = () => {
  if (mapElement) {
    const map = buildMap();
    const markers = JSON.parse(mapElement.dataset.markers);
    if (markers.length > 0) {
      addMarkersToMap(map, markers);
      fitMapToMarkers(map, markers);
    }
    if (mapElement.dataset.isDashboard) {
      document.body.style.overflowX = 'hidden';
    }
  }
};


export { initMapbox };

