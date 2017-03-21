import { connect } from 'react-redux';
import { fetchRestaurant, createImage } from '../../actions/restaurants_actions.js';
import RestaurantPhotos from './restaurant_photos.jsx';

const mapStateToProps = (state, ownProps) => ({
  restaurant: state.restaurant,
  photos: state.restaurant.photos,
  currentUser: state.session.currentUser
});

const mapDispatchToProps = (dispatch) => ({
  createImage: (data) => dispatch(createImage(data)),
  fetchRestaurant: (id) => dispatch(fetchRestaurant(id))
});

export default connect(
  mapStateToProps,
  mapDispatchToProps
)(RestaurantPhotos);
