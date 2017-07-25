import React from 'react';
import StarRating from 'react-star-rating';
import { hashHistory } from 'react-router';
import starRating from '../starRating';
import ReactStars from 'react-stars';
import StarRatingComponent from 'react-star-rating-component';
import RestaurantReviewItem from '../restaurants/restaurant_review_item';

class ReviewForm extends React.Component {
  constructor (props) {
    super(props);

    this.handleSubmit = this.handleSubmit.bind(this);
    this.state = this.props.review || {
      headline: "",
      body: "",
      rating: 0,
      user_id: this.props.currentUser.id,
      restaurant_id: this.props.params.restaurantId,
      errors: this.props.reviewErrors
    };
    this.rating = 0;
    window.scrollTo(0, 0);

    this.handleSubmit = this.handleSubmit.bind(this);
  }

  componentWillMount () {
    this.props.fetchRestaurant(this.props.params.restaurantId);
  }

  componentDidMount () {
    if (this.props.formType === "Update Review" && this.props.params.reviewId ) {
      this.setState(this.props.review);
    }
  }

  componentWillReceiveProps (newProps) {
    if (this.props.formType === "Update Review"){
      this.setState(newProps.review);
    }
    if (this.props.params.restaurantId !== newProps.params.restaurantId) {
      this.props.fetchRestaurant(newProps.params.restaurantId);
    }
    if (!newProps.currentUser) {
      return hashHistory.push(`/`);
    }
  }

  update(property) {
    return e => {
      e.preventDefault();
      this.setState({[property]: e.target.value});
    };
  }

  photo () {
    if (this.props.review.photo){
      return <img src={this.props.review.photo.url} />;
    }
  }

  uploadButton () {
    if (this.props.currentUser) {
      return <UploadButton createImage={this.props.createImage} reviewId={this.props.params.reviewId} restaurantId = {this.props.params.restaurantId}/>;
    }
  }

  handleSubmit(e) {
     const form = {
      headline: this.state.headline,
      body: this.state.body,
      rating: this.rating || this.state.rating,
      user_id: this.props.currentUser.id,
      restaurant_id: this.props.params.restaurantId
    };
    e.preventDefault();
    if (this.props.review) {
      form.id = this.props.review.id;
    }
    this.props.clearReviewErrors();
    this.props.action(form).then(
      () => {
        if (this.props.reviewErrors.length === 0) {
          return hashHistory.push(`restaurants/${this.props.params.restaurantId}`);
        }
      }
    );
  }

  renderErrors() {
    if (this.props.reviewErrors) {
      return(
        <ul>
          {this.props.reviewErrors.map((error, i) => (
            <li key={`error-${i}`} className= "error-list">
              <text className="errors">Error: {error}</text>
            </li>
          ))}
        </ul>
      );
    }
  }

  yourRating () {
    if (this.state.rating) {
      // return <text>Your Rating: {starRating(this.state.rating)}</text>;
      switch (this.state.rating){
        case 5:
          return <text>😁 This Place Is Awesome! I Will Definitely Come Back! 😁</text>;
        case 4:
          return <text>😃 This Place Exceeded My Expectations! 😃</text>;
        case 3:
          return <text>😐 This Place Met My Expectations. 😐</text>;
        case 2:
          return <text>😕 This Place Was Satisfactory, But It Could Do Better. 😕</text>;
        case 1:
          return <text>😞 I Would Not Recommend This Place. 😞</text>;
      }
    }
  }

  render () {
    const updateRating = (newRating) => {
        this.rating = newRating;
        this.setState({rating: newRating});
      };
    const text = this.props.formType === 'New Review' ? "Create Review" : "Update Review";
    return (
        <form className="ReviewForm"onSubmit={this.handleSubmit}>
          <h3 className="review-name">{text}</h3>
          <RestaurantReviewItem restaurant = {this.props.restaurant}/>
          {this.renderErrors()}
          <div className='RF-rating'>
            <text>Rating:     </text>
            <StarRatingComponent name="review-rating" value={this.state.rating} starCount={5} onStarClick={updateRating} />
          </div>
          {this.yourRating()}
          <label className = 'rev-headline'>
            <input className="review-headline-input" type="text" value={this.state.headline} onChange={this.update('headline')} placeholder="Headline"/>
          </label>
          <br />
            <textarea className="review-body-input" value={this.state.body} onChange={this.update('body')}
              placeholder="Your review helps others learn about great local businesses.
              Please don't review this business if you received a freebie for writing this review, or if you're connected in any way to the owner or employees."/>
          <input type="submit" value={text} />
        </form>
    );
  }
}

export default ReviewForm;

// const updateRating = (newRating) => {
//     this.rating = newRating;
//     this.setState({rating: newRating});
//   };

// <ReactStars onChange={updateRating} count = {5} half={false} />

// const updateRating = () => {
//   return (e, {pos, newRating, caption, name}) => {
//     e.preventDefault();
//     this.rating = newRating;
//     this.setState({rating: newRating});
//   };
// };

// <StarRating name="review-rating" totalStars={5} ratingAmount = {this.state.rating} onRatingClick={updateRating} />
