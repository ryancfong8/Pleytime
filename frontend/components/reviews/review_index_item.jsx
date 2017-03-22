import React from 'react';
import { hashHistory } from 'react-router';
import starRating from "../starRating";

class ReviewIndexItem extends React.Component {
  constructor(props) {
    super(props);

  }


  deleteButton() {
    if (this.props.currentUser && this.props.currentUser.id === this.props.review.user_id) {
      return <button className="Delete-Button" onClick={()=>this.props.deleteReview(this.props.review.id)}>Delete Review</button>;
    }
  }

  editReview(id) {
    return e => {
      e.preventDefault();
      let url = `/restaurants/${this.props.restaurantId}/reviews/${id}/edit`;
      return hashHistory.push(url);
    };
  }

  editButton() {
    if (this.props.currentUser && this.props.currentUser.id === this.props.review.user_id) {
      return (
        <button className="Edit-Button"onClick={this.editReview(this.props.review.id)}>Edit Review</button>
      );
    }
  }

  render () {
    return (
      <li className="ReviewListItem">
        <div className="rating-date">
          <text className="re-rating">Rating: {starRating(this.props.review.rating)}</text>
          <text className="Gray-text">{this.props.review.created_at}</text>
          {this.deleteButton()}
          {this.editButton()}
        </div>
        <text className="Headline">{this.props.review.headline}</text>
        <text>By: {this.props.review.user.username}</text>
        <br />
        <p>{this.props.review.body}</p>
      </li>
    );
  }
}

export default ReviewIndexItem;
