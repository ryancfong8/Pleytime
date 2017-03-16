import { connect } from 'react-redux';
import { fetchRestaurant } from '../../actions/restaurants_actions.js';
import Restaurant from './restaurant.jsx';

const mapStateToProps = (state, ownProps) => ({
  restaurant: state.restaurant
});

const mapDispatchToProps = (dispatch) => ({
  fetchRestaurant: (id) => dispatch(fetchRestaurant(id))
});

export default connect(
  mapStateToProps,
  mapDispatchToProps
)(Restaurant);
