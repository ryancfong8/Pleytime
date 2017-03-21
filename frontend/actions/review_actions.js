import * as ReviewApiUtil from '../util/reviews_api_util';
import { receiveRestaurant, RECEIVE_RESTAURANT } from './restaurants_actions';

export const RECEIVE_REVIEWS = 'RECEIVE_REVIEWS';
export const RECEIVE_REVIEW = 'RECEIVE_REVIEW';
export const REMOVE_REVIEW = 'REMOVE_REVIEW';

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

export const fetchReviews = () => dispatch => {
  return ReviewApiUtil.fetchReviews().then(reviews => dispatch(receiveReviews));
};

export const createReview = (data) => dispatch =>  {
  return ReviewApiUtil.createReview(data).then(review => dispatch(receiveReview(review)));
};

export const updateReview = (data) => dispatch =>  {
  return ReviewApiUtil.updateReview(data).then(review => dispatch(receiveReview(review)));
};

export const deleteReview = (id) => dispatch =>  {
  return ReviewApiUtil.deleteReview(id).then(review => dispatch(removeReview(review)));
};
