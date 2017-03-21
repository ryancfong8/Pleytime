import { RECEIVE_RESTAURANT, RECEIVE_PHOTO } from '../actions/restaurants_actions.js';
import { RECEIVE_REVIEW, REMOVE_REVIEW } from '../actions/review_actions';
import { merge } from 'lodash';

const nullRestaurant = {
  id: "",
  name: "",
  description: "",
  address: "",
  price: "",
  hours: "",
  lat: "",
  long: "",
  image_url: "",
  photos: [],
  reviews: []
};

const RestaurantReducer = (oldState = nullRestaurant, action) => {
  Object.freeze(oldState);
  let newRestaurant;
  switch(action.type){
    case RECEIVE_RESTAURANT:
      return merge({}, action.restaurant);
    case RECEIVE_PHOTO:
      newRestaurant = merge({}, oldState);
      newRestaurant.photos.push(action.photo);
      return newRestaurant;
    case RECEIVE_REVIEW:
      newRestaurant = merge({}, oldState);
      newRestaurant.reviews.push(action.review);
      return newRestaurant;
    case REMOVE_REVIEW:
      newRestaurant = merge({}, oldState);
      let index = newRestaurant.reviews.indexOf(action.review);
      newRestaurant.reviews.splice(index, 1);
      return newRestaurant;
    default:
      return oldState;
  }
};

export default RestaurantReducer;
