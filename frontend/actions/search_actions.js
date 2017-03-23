import * as SearchApiUtil from '../util/searches_api_util.js';
import { receiveAllRestaurants} from "./restaurants_actions";
export const RECEIVE_SEARCH = 'RECEIVE_SEARCH';

export const receiveSearch = (searchResults) => ({
  type: RECEIVE_SEARCH,
  searchResults
});

export const searchRestaurants = (searchTerm) => dispatch => (
  SearchApiUtil.searchRestaurants(searchTerm).then((restaurants => dispatch(receiveAllRestaurants(restaurants))))
);
