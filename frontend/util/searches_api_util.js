export const searchRestaurants = (searchTerm) => (
  $.ajax({method: 'GET', url:`api/searches/${searchTerm}`})
);
