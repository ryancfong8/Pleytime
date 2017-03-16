import { RECEIVE_ALL_RESTAURANTS } from '../actions/restaurants_actions.js';
import merge from 'lodash/merge';


const RestaurantsReducer = (oldState = {}, action) => {
  Object.freeze(oldState);
  switch(action.type) {
    case RECEIVE_ALL_RESTAURANTS:
      return merge({}, action.restaurants);
    default:
      return oldState;
  }
};

export default RestaurantsReducer;
