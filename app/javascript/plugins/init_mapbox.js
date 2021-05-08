import mapboxgl from 'mapbox-gl';
import 'mapbox-gl/dist/mapbox-gl.css';

const initMapbox = () => {
  const mapElement = document.getElementById('map');

  const fitMapToMarkers = (map, markers) => {
    const bounds = new mapboxgl.LngLatBounds();
    markers.forEach(marker => bounds.extend([ marker.lng, marker.lat ]));
    map.fitBounds(bounds, { padding: 70, maxZoom: 15, duration: 0 });
  };

  const cardClickHandler = (map, mapboxMarker) => {
    return (event) => {
      mapboxMarker.togglePopup();
      map.flyTo({
        center: mapboxMarker.getLngLat(),
        essential: true
      });
    }
  }

  const makeCardClickable = (marker, mapboxMarker, map) => {
    const markerDiv = mapboxMarker.getElement();
    markerDiv.id = `marker-${marker.id}`
    const machineCard = document.getElementById(`card-product-${marker.id}`);
    machineCard.addEventListener('DOMContentLoaded', (click) => { cardClickHandler(map, mapboxMarker)}
      );
  }

  if (mapElement) { // only build a map if there's a div#map to inject into
    mapboxgl.accessToken = mapElement.dataset.mapboxApiKey;
    const map = new mapboxgl.Map({
      container: 'map',
      style: 'mapbox://styles/mapbox/streets-v10'
    });

    const markers = JSON.parse(mapElement.dataset.markers);
    markers.forEach((marker) => {
      const popup = new mapboxgl.Popup().setHTML(marker.infoWindow);
      const element = document.createElement('div');
      element.style.backgroundSize = 'contain';
      element.style.width = '25px';
      element.style.height = '25px';
      element.style.backgroundImage = `url('${marker.image_url}')`
      element.className = 'marker';
      const mapboxMarker = new mapboxgl.Marker()
          .setLngLat([ marker.lng, marker.lat ])
          .setPopup(popup)
          .addTo(map);

    // makeCardClickable(marker, mapboxMarker, map);

    });

    fitMapToMarkers(map, markers);
  }

  };


export { initMapbox };

  // const addMarkersToMap = (map, markers) => {
  // markers.forEach((marker) => {
  //   const popup = new mapboxgl.Popup().setHTML(marker.infoWindow); // add this

  //   // Create a HTML element for your custom marker
  //   const element = document.createElement('div');
  //   element.className = 'marker';
  //   element.style.backgroundImage = `url('${marker.image_url}')`;
  //   element.style.backgroundSize = 'contain';
  //   element.style.width = '25px';
  //   element.style.height = '25px';

  //   // Pass the element as an argument to the new marker
    // new mapboxgl.Marker(element)
    //   .setLngLat([marker.lng, marker.lat])
    //   .setPopup(popup)
    //   .addTo(map);

    // new mapboxgl.Marker()
    //   .setLngLat([ marker.lng, marker.lat ])
    //   .setPopup(popup) // add this
    //   .addTo(map);
    // });
