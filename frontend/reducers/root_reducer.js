import { combineReducers } from 'redux';

import SessionsReducer from './sessions_reducer';
import RestaurantsReducer from './restaurants_reducer';

const rootReducer = combineReducers({
  session: SessionsReducer,
  restaurants: RestaurantsReducer
});

export default rootReducer;
