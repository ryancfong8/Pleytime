import { combineReducers } from 'redux';

import SessionsReducer from './sessions_reducer';
import RestaurantsReducer from './restaurants_reducer';
import RestaurantReducer from './restaurant_reducer';
import reviewReducer from './review_reducer';

const rootReducer = combineReducers({
  session: SessionsReducer,
  restaurants: RestaurantsReducer,
  restaurant: RestaurantReducer,
  reviews: reviewReducer
});

export default rootReducer;
