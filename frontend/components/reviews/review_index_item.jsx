import React from 'react';
import { hashHistory } from 'react-router';
import starRating from "../starRating";

class ReviewIndexItem extends React.Component {
  constructor(props) {
    super(props);
  }


  deleteButton() {
    if (window.currentUser && window.currentUser.id === this.props.review.user_id) {
      return <button onClick={()=>this.props.deleteReview(this.props.review.id)}>Delete Review</button>;
    }
  }

  editReview(id) {
    return e => {
      e.preventDefault();
      let url = `restaurants/${this.props.review.restaurant.id}/reviews/${id}/edit`;
      return hashHistory.push(url);
    };
  }

  editButton() {
    if (window.currentUser && window.currentUser.id === this.props.review.user_id) {
      return (
        <button onClick={this.editReview(this.props.review.id)}>Edit Review</button>
      );
    }
  }

  render () {
    return (
      <li className="ReviewListItem">
        <div className="rating-date">
          <text className="re-rating">Rating: {starRating(this.props.review.rating)}</text>
          <text>{this.props.review.created_at}</text>
        </div>
        <text className="Headline">{this.props.review.headline}</text>
        <text>By: {this.props.review.user.username}</text>
        <br />
        <p>{this.props.review.body}</p>
        {this.deleteButton()}
        {this.editButton()}
      </li>
    );
  }
}

export default ReviewIndexItem;
