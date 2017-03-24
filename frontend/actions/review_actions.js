import * as ReviewApiUtil from '../util/reviews_api_util';
import { receiveRestaurant, RECEIVE_RESTAURANT } from './restaurants_actions';
import { receiveErrors } from './sessions_actions';

export const RECEIVE_REVIEWS = 'RECEIVE_REVIEWS';
export const RECEIVE_REVIEW = 'RECEIVE_REVIEW';
export const REMOVE_REVIEW = 'REMOVE_REVIEW';
export const RECEIVE_REVIEW_ERRORS = 'RECEIVE_REVIEW_ERRORS';
export const REMOVE_REVIEW_ERRORS = 'REMOVE_REVIEW_ERRORS';

export const receiveReviews = (reviews) => ({
  type: RECEIVE_REVIEWS,
  reviews
});

export const receiveReview = (review) => ({
  type: RECEIVE_REVIEW,
  review
});

export const removeReview = (review) => ({
  type: REMOVE_REVIEW,
  review
});

export const receiveReviewErrors = (reviewErrors) => ({
  type: RECEIVE_REVIEW_ERRORS,
  reviewErrors
});

export const clearReviewErrors = () => ({
  type: REMOVE_REVIEW_ERRORS
});

export const fetchReviews = () => dispatch => {
  return ReviewApiUtil.fetchReviews().then(reviews => dispatch(receiveReviews));
};

export const createReview = (data) => dispatch =>  {
  return ReviewApiUtil.createReview(data).then(review => dispatch(receiveReview(review)),
  err => dispatch(receiveReviewErrors(err.responseJSON)));
};

export const updateReview = (data) => dispatch =>  {
  return ReviewApiUtil.updateReview(data).then(review => dispatch(receiveReview(review)),
  err => dispatch(receiveReviewErrors(err.responseJSON)));
};

export const deleteReview = (id) => dispatch =>  {
  return ReviewApiUtil.deleteReview(id).then(review => dispatch(removeReview(review)));
};
