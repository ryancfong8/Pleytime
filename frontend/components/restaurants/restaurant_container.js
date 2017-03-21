import { connect } from 'react-redux';
import { fetchRestaurant, createImage } from '../../actions/restaurants_actions.js';
import { fetchReviews } from '../../actions/review_actions.js';
import Restaurant from './restaurant.jsx';

const mapStateToProps = (state, ownProps) => ({
  restaurant: state.restaurant,
  currentUser: state.session.currentUser
});

const mapDispatchToProps = (dispatch) => ({
  fetchRestaurant: (id) => dispatch(fetchRestaurant(id)),
  createImage: (data) => dispatch(createImage(data)),
  fetchReviews: (id)=>dispatch(fetchReviews(id))
});

export default connect(
  mapStateToProps,
  mapDispatchToProps
)(Restaurant);
