import { UPDATE_FILTER } from '../actions/filter_actions';
import merge from 'lodash/merge';

const _defaultFilters = Object.freeze({
  bounds: {},
});

const filterReducer = (oldState = _defaultFilters, action) => {
  Object.freeze(oldState);
    if (action.type === UPDATE_FILTER) {
      const newFilter = {
        [action.filter]: action.value
      };
      return merge({}, oldState, newFilter);
    } else {
      return oldState;
    }
};

export default filterReducer;
