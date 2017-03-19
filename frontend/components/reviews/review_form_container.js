import { connect } from 'react-redux';
import { fetchReviews, createReview, updateReview } from '../../actions/review_actions';

const mapStateToProps = (state, ownProps) => {
  let formType = ownProps.params.reviewId ? "Update Review" : "New Review";
  return {
    reviews: state.reviews,
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

// export default connect(
//   mapStateToProps,
//   mapDispatchToProps
// )
