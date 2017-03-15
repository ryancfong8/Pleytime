import { RECEIVE_ERRORS, RECEIVE_CURRENT_USER } from '../actions/sessions_actions.js';
import merge from 'lodash/merge';

const SessionsReducer = (oldState = { currentUser: null, errors: []}, action) => {
  Object.freeze(oldState);
  switch(action.type) {
    case RECEIVE_CURRENT_USER:
      return merge({}, oldState, {currentUser: action.currentUser});
    case RECEIVE_ERRORS:
      return merge({}, oldState, {errors: action.errors}, {currentUser: null});
    default:
      return oldState;
  }
};

export default SessionsReducer;
