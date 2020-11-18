import places from 'places.js';

const initAutocomplete = () => {
  const addressInput = document.getElementById('flat_address');

  if (addressInput == null)
    return

  places({ container: addressInput });
};

export default initAutocomplete;
