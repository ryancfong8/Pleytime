import { connect } from 'react-redux';
import Restaurants from './restaurants.jsx';
import { fetchRestaurants } from '../../actions/restaurants_actions.js';
import { updateFilter } from '../../actions/filter_actions.js';


const mapStateToProps = (state) => ({
  restaurants: Object.keys(state.restaurants).map(id => state.restaurants[id]),
  // bounds: state.filters.bounds
});

const mapDispatchToProps = (dispatch) => ({
  fetchRestaurants: (params) => dispatch(fetchRestaurants(params))
  // updateFilter: (filter, value) => dispatch(updateFilter(filter, value))
});

export default connect(
  mapStateToProps,
  mapDispatchToProps
)(Restaurants);
