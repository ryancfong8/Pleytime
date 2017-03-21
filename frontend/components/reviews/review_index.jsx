import React from 'react';
import ReviewIndexItem from './review_index_item';

class ReviewIndex extends React.Component {
  constructor (props) {
    super(props);
  }

  render() {
    return (
      <div className = "ReviewContainer">
        <h2>Reviews</h2>
        <ul className = "ReviewList">
        {this.props.reviews.map((review) => (
          <ReviewIndexItem key = {Math.random()} deleteReview={this.props.deleteReview} review={review} restaurantId = {this.props.restaurantId} currentUser = {this.props.currentUser} />
        ))}
        </ul>
      </div>
    );
  }
}

export default ReviewIndex;
