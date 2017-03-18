import { connect } from 'react-redux';
import { fetchRestaurant, createImage } from '../../actions/restaurants_actions.js';
import Restaurant from './restaurant.jsx';

const mapStateToProps = (state, ownProps) => ({
  restaurant: state.restaurant
});

const mapDispatchToProps = (dispatch) => ({
  fetchRestaurant: (id) => dispatch(fetchRestaurant(id)),
  createImage: (data) => dispatch(createImage(data))
});

export default connect(
  mapStateToProps,
  mapDispatchToProps
)(Restaurant);
