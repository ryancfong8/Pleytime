import { connect } from 'react-redux';
import { fetchReviews, createReview, updateReview } from '../../actions/review_actions';
import ReviewForm from './review_form';

const mapStateToProps = (state, ownProps) => {
  let formType = ownProps.params.reviewId ? "Update Review" : "New Review";
  let review = state.restaurant.reviews.find((el) => el.id == ownProps.params.reviewId );
  return {
    review,
    formType
  };
};

const mapDispatchToProps = (dispatch, ownProps) => {
  let action = ownProps.params.reviewId ? updateReview : createReview;
  return {
    fetchReviews: (id) => dispatch(fetchReviews(id)),
    action: (id, review) => dispatch(action(id, review))
  };
};

export default connect(
  mapStateToProps,
  mapDispatchToProps
)(ReviewForm);
