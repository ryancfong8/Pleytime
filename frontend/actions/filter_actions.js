import { fetchRestaurants } from "./restaurants_actions";

export const UPDATE_FILTER = 'UPDATE_BOUNDS';

export const updateFilter = (filter, value) => (dispatch, getState) => {
  dispatch(changeFilter(filter, value));
  return fetchRestaurants(getState().filters)(dispatch);
};

export const changeFilter = (filter, value) => ({
  type: UPDATE_FILTER,
  filter,
  value
});
