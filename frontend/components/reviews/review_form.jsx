import React from 'react';
import ReactStars from 'react-stars';
import { hashHistory } from 'react-router';

class ReviewForm extends React.Component {
  constructor (props) {
    super(props);

    this.handleSubmit = this.handleSubmit.bind(this);
    this.state = this.props.review || {
      headline: "",
      body: "",
      rating: "",
      user_id: window.currentUser.id,
      restaurant_id: this.props.params.restaurantId,
    };
    this.rating = 0;
  }

  componentDidMount () {
    if (this.props.params.reviewId) {
      this.setState(this.props.review);
    }
  }

  componentWillReceiveProps (newProps) {
    this.setState(newProps.review);
  }

  update(property) {
    return e => {
      e.preventDefault();
      this.setState({[property]: e.target.value});
    };
  }

  handleSubmit(e) {
     const form = {
      headline: this.state.headline,
      body: this.state.body,
      rating: this.rating || this.state.rating,
      user_id: window.currentUser.id,
      restaurant_id: this.props.params.restaurantId
    };
    e.preventDefault();
    if (this.props.review) {
      form.id = this.props.review.id;
    }
    this.props.action(form);
    return hashHistory.push(`restaurants/${this.props.params.restaurantId}`);
  }


  render () {
    const updateRating = (newRating) => {
      this.rating = newRating;
    };
    const text = this.props.formType === 'New Review' ? "Create Review" : "Update Review";
    return (
        <form className="ReviewForm"onSubmit={this.handleSubmit}>
          <h3>{text}</h3>
          <div className='RF-rating'>
            <text>Rating:     </text>
            <ReactStars count={5} onChange={updateRating} half={false}/>
          </div>
          <br />
          <label>Headline:
            <input className="review-headline-input" type="text" value={this.state.headline} onChange={this.update('headline')} />
          </label>
          <br />
            <textarea className="review-body-input" value={this.state.body} onChange={this.update('body')} />
          <input type="submit" value={text} />
        </form>
    );
  }
}

export default ReviewForm;
