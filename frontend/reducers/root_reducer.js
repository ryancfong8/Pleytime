import { combineReducers } from 'redux';

import SessionsReducer from './sessions_reducer';

const rootReducer = combineReducers({
  session: SessionsReducer
});

export default rootReducer;
