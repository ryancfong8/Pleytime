import * as SessionApiUtil from '../util/sessions_api_util.js';

export const RECEIVE_CURRENT_USER = 'RECEIVE_CURRENT_USER';
export const RECEIVE_ERRORS = 'RECEIVE_ERRORS';
export const CLEAR_ERRORS = 'CLEAR_ERRORS';

export const receiveCurrentUser = (currentUser) => ({
  type: RECEIVE_CURRENT_USER,
  currentUser
});

export const receiveErrors = (errors) => ({
  type: RECEIVE_ERRORS,
  errors
});

export const clearErrors = () => ({
  type: CLEAR_ERRORS
});

export const login = (user) => (dispatch) => {
  return SessionApiUtil.login(user).then((user1) => dispatch(receiveCurrentUser(user1)),
  err => dispatch(receiveErrors(err.responseJSON)));
};

export const signup = (user) => (dispatch) => {
  return SessionApiUtil.signup(user).then((user1) => dispatch(receiveCurrentUser(user1)),
  err => dispatch(receiveErrors(err.responseJSON)));
};

export const logout = () => (dispatch) => {
  return SessionApiUtil.logout().then(() => dispatch(receiveCurrentUser(null)));
};

export const loginGuestUser = () => (dispatch) => {
  return SessionApiUtil.loginGuestUser().then((user1) => {
    dispatch(receiveCurrentUser(user1));
  });
};
