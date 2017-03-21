import React from 'react';
import PhotoSlider from './restaurant_pic_slider';
import UploadButton from './upload_button';
import ReviewIndexContainer from "../reviews/review_container";
import starRating from "../starRating";
import { hashHistory} from "react-router";

class Restaurant extends React.Component {
  constructor(props){
    super(props);

    this.postImage = this.postImage.bind(this);
    this.state = this.props.currentUser;
    // this.state = { key: 1 };
  }

  updateKey () {
    this.setState({key: Math.random()});
  }

  componentDidMount(){
    this.props.fetchRestaurant(this.props.params.restaurantId);
  }

  // componentWillUpdate() {
  //   this.props.fetchRestaurant(this.props.params.restaurantId);
  // }

  componentWillReceiveProps(newProps){
    if (this.props.params.restaurantId !== newProps.params.restaurantId) {
      this.props.fetchRestaurant(newProps.params.restaurantId);
    }
  }

  routeIsCorrect() {
    return parseInt(this.props.params.restaurantId) === this.props.restaurant.id;
  }

  postImage(url) {
    let data = {photo: {restaurant_id: this.props.params.restaurantId, user_id: window.currentUser.id, url: url }};
    this.props.createImage(data);
  }

  uploadButton () {
    if (this.props.currentUser) {
      return <UploadButton updateKey= {this.updateKey.bind(this)} createImage={this.props.createImage} restaurantId = {this.props.params.restaurantId}/>;
    }
  }

  reviewButton() {
    const newReview  = (id) => (e) => {
      e.preventDefault();
      let url = `restaurants/${this.props.params.restaurantId}/reviews/new`;
      return hashHistory.push(url);
    };
    if (this.props.currentUser) {
      return <button onClick={newReview(this.props.restaurant.id)} className="Review-Button">★ Write a Review</button>;
    }
    else {
      return <text>Sign In to Write a Review!</text>;
    }
  }

  render() {
    return (
    <div>
      <div className = "first-half">
      <div className="restaurant-page">
          <div className="r-name-buttons">
            <div className = "r-des">
              <h1>{this.props.restaurant.name}</h1>
              <div className="r-rating">
                <div>
                  <text>Rating: {starRating(parseInt(this.props.restaurant.averageRating))}</text>
                  <text>     {this.props.restaurant.numReviews} Reviews</text>
                </div>
              </div>
              <div className="r-price">
                <text>Price: </text>
                <text className="restaurant-index-price">{this.props.restaurant.price}</text>
              </div>
            </div>
            <div className="buttons">
              {this.uploadButton()}
              {this.reviewButton()}
            </div>
          </div>
            <div className="r-map-pics">
              <div className="r-map-info">
                  <div className="r-map">
                    <h2>Map</h2>
                  </div>
                  <text>{this.props.restaurant.address}</text>
                  <text>{this.props.restaurant.city_params}</text>
                  <text>{this.props.restaurant.phone}</text>
                  <br />
                  <p>{this.props.restaurant.description}</p>
              </div>
              <div className="r-imgs">
                {this.props.restaurant.photos.map((photo) => (
                  <img className="scroll-image" key={photo.id} src={photo.url} />
                ))}
              </div>
          </div>
        </div>
      </div>
      <div className = "second-half">
      <div className='r-reviews-hours'>
        <div className="reviews">
          <ReviewIndexContainer reviews={this.props.restaurant.reviews} currentUser = {this.props.currentUser} restaurantId={this.props.params.restaurantId}/>
        </div>
        <div className="r-hours">
            <h3>Hours</h3>
            <div className="day-hours">
            <text className="day">Monday: </text><text>{this.props.restaurant.mon}</text>
            </div>
            <div className="day-hours">
            <text className="day">Tuesday: </text><text>{this.props.restaurant.tue}</text>
            </div>
            <div className="day-hours">
            <text className="day">Wednesday: </text><text>{this.props.restaurant.wed}</text>
            </div>
            <div className="day-hours">
            <text className="day">Thursday: </text><text>{this.props.restaurant.thur}</text>
            </div>
            <div className="day-hours">
            <text className="day">Friday: </text><text>{this.props.restaurant.fri}</text>
            </div>
            <div className="day-hours">
            <text className="day">Saturday: </text><text>{this.props.restaurant.sat}</text>
            </div>
            <div className="day-hours">
            <text className="day">Sunday: </text><text>{this.props.restaurant.sun}</text>
            </div>
        </div>
      </div>
    </div>
    </div>
    );
  }
}

export default Restaurant;
// <div className="r-imgs">
//   <img src={this.props.restaurant.image_url} />
// </div>
// <PhotoSlider photos = {this.props.restaurant.photos} />
