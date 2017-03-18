export const fetchRestaurants = () => (
  $.ajax({method: 'GET', url: 'api/restaurants'})
);

export const fetchRestaurant = (id) => (
  $.ajax({method: 'GET', url: `api/restaurants/${id}`})
);

export const createImage = (photo) => (
  $.ajax({method: "POST", url: 'api/photos', data: {photo}})
);
