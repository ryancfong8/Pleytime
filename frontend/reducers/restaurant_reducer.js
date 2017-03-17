import { RECEIVE_RESTAURANT } from '../actions/restaurants_actions.js';
import { merge } from 'lodash';

const nullRestaurant = {
  name: "",
  description: "",
  address: "",
  price: "",
  hours: "",
  lat: "",
  long: "",
  image_url: "",
  photos: []
};

const RestaurantReducer = (oldState = nullRestaurant, action) => {
  Object.freeze(oldState);
  switch(action.type){
    case RECEIVE_RESTAURANT:
    return merge({}, action.restaurant);
    default:
      return oldState;
  }
};

export default RestaurantReducer;
