import { connect } from 'react-redux';
import { fetchReviews, createReview, updateReview } from '../../actions/review_actions';
import { fetchRestaurant } from '../../actions/restaurants_actions';
import { clearReviewErrors } from '../../actions/review_actions';
import ReviewForm from './review_form';

const mapStateToProps = (state, ownProps) => {
  let formType = ownProps.params.reviewId ? "Update Review" : "New Review";
  let review = state.restaurant.reviews.find((el) => el.id == ownProps.params.reviewId );
  return {
    review,
    formType,
    restaurant: state.restaurant,
    reviewErrors: state.reviewErrors
  };
};

const mapDispatchToProps = (dispatch, ownProps) => {
  let action = ownProps.params.reviewId ? updateReview : createReview;
  return {
    fetchRestaurant: (id) => dispatch(fetchRestaurant(id)),
    fetchReviews: (id) => dispatch(fetchReviews(id)),
    action: (id, review) => dispatch(action(id, review)),
    clearReviewErrors: () => dispatch(clearReviewErrors())
  };
};

export default connect(
  mapStateToProps,
  mapDispatchToProps
)(ReviewForm);
