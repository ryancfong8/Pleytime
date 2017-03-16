import { connect } from 'react-redux';
import Restaurants from './restaurants.jsx';
import { fetchRestaurants } from '../../actions/restaurants_actions.js';

const mapStateToProps = (state) => ({
  restaurants: Object.keys(state.restaurants).map(id => state.restaurants[id])
});

const mapDispatchToProps = (dispatch) => ({
  fetchRestaurants: () => dispatch(fetchRestaurants())
});

export default connect(
  mapStateToProps,
  mapDispatchToProps
)(Restaurants);
