import places from 'places.js';

const initAutocomplete = () => {
  const addressInput = document.getElementById('machine_location');
  if (addressInput) {
    places({ container: addressInput });
  }
  const addressSearch = document.getElementById('search_location');
  if (addressSearch) {
    places({ container: addressSearch });
  }
};

export { initAutocomplete };
