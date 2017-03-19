import React from 'react';
import PhotoSlider from './restaurant_pic_slider';
import UploadButton from './upload_button';
import ReviewIndexContainer from "../reviews/review_container";

class Restaurant extends React.Component {
  constructor(props){
    super(props);

    this.postImage = this.postImage.bind(this);
    this.state = { key: 1 };
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

  render() {
    return (
      <div className='background'>
      <div className="restaurant-page">

            <div className = "r-des">
              <h1>{this.props.restaurant.name}</h1>
              <div className="r-rating">
                <text>Rating: </text>
              <div className="r-price">
                <text>Price: </text>
                <text className="restaurant-index-price">{this.props.restaurant.price}</text>
              </div>
            </div>
          </div>

            <div className="r-map-hours">
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
              <div className="r-hours">
                  <h3>Hours</h3>
                  <text>Monday: {this.props.restaurant.mon}</text>
                  <text>Tuesday: {this.props.restaurant.tue}</text>
                  <text>Wednesday: {this.props.restaurant.wed}</text>
                  <text>Thursday: {this.props.restaurant.thur}</text>
                  <text>Friday: {this.props.restaurant.fri}</text>
                  <text>Saturday: {this.props.restaurant.sat}</text>
                  <text>Sunday: {this.props.restaurant.sun}</text>
              </div>
          </div>

        <h2>Pictures</h2>
        <div className="r-imgs">
          {this.props.restaurant.photos.map((photo) => (
            <img className="scroll-image" key={photo.id} src={photo.url} />
          ))}
        </div>
        <ReviewIndexContainer reviews={this.props.restaurant.reviews} restaurantId={this.props.params.restaurantId}/>
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

// <UploadButton updateKey= {this.updateKey.bind(this)} createImage={this.props.createImage} restaurantId = {this.props.params.restaurantId}/>
