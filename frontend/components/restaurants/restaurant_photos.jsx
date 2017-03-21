import React from 'react';
import starRating from '../starRating';
import { Link } from 'react-router';

class RestaurantPhotos extends React.Component {
  constructor (props) {
    super(props);
  }

  componentDidMount () {
    this.props.fetchRestaurant(this.props.params.restaurantId);
  }

  componentWillReceiveProps(newProps){
    if (this.props.params.restaurantId !== newProps.params.restaurantId) {
      this.props.fetchRestaurant(newProps.params.restaurantId);
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
          </div>
          <div className="PhotoIndex">
          {this.props.photos.map((photo) => (
            <img key={photo.id} src={photo.url} className = "Photo"/>
          ))}
          </div>
        </div>
      </div>
    );
  }
}

export default RestaurantPhotos;
