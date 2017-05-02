import React from 'react';
import starRating from '../starRating';
import { Link } from 'react-router';
import UploadButton from './upload_button';
import PhotoIndexItem from '../photos/photo_index_item';

class RestaurantPhotos extends React.Component {
  constructor (props) {
    super(props);
    window.scrollTo(0, 0);
  }

  componentDidMount () {
    this.props.fetchRestaurant(this.props.params.restaurantId);
  }

  componentWillReceiveProps(newProps){
    if (this.props.params.restaurantId !== newProps.params.restaurantId) {
      this.props.fetchRestaurant(newProps.params.restaurantId);
    }
  }

  uploadButton () {
    if (this.props.currentUser) {
      return <UploadButton currentUser = {this.props.currentUser} createImage={this.props.createImage} restaurantId = {this.props.params.restaurantId}/>;
    }
  }

  render() {
    return(
      <div className = "PhotoPage">
        <div>
          <h2>Photos For {this.props.restaurant.name}</h2>
          <div className ="Restaurant-Detail">
            <Link className="restaurant-index-name" to={`/restaurants/${this.props.params.restaurantId}`}>{this.props.restaurant.name}</Link>
          <div className="rp-rating">
            <text>{starRating(this.props.restaurant.averageRating)}</text>
            <text>{this.props.restaurant.numReviews} Reviews</text>
          </div>
          {this.uploadButton()}
          </div>
          <div className="PhotoIndex">
          {this.props.photos.map((photo) => (
            <PhotoIndexItem key={Math.random()} photo={photo} />
          ))}
          </div>
        </div>
      </div>
    );
  }
}

export default RestaurantPhotos;
