export const fetchRestaurants = (params) => (
  $.ajax({method: 'GET', url: 'api/restaurants', data: {query: params}})
);

export const fetchRestaurant = (id) => (
  $.ajax({method: 'GET', url: `api/restaurants/${id}`})
);

export const createImage = (photo) => (
  $.ajax({method: "POST", url: 'api/photos', data: {photo}})
);
