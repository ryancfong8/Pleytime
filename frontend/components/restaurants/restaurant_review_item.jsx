import React from 'react';
import starRating from '../starRating';
import { Link } from 'react-router';

const RestaurantReviewItem = (props) => {
  return(
    <div className="r-rev-des">
    <div className="restaurant-review-item">
      <img className = "picture" src={props.restaurant.photos[0].url} />
      <div className="title-properties-rev">
        <Link className="restaurant-index-name" to={`/restaurants/${props.restaurant.id}`}>{props.restaurant.name}</Link>
        <div>
          <text className="restaurant-index-price">{props.restaurant.price}</text>
        </div>
        <text className = "title-properties-rev-text">{props.restaurant.address}</text>
        <text className = "title-properties-rev-text">{props.restaurant.city_params}</text>
      </div>
    </div >
    <div className="rev-des">
      <text className = "title-properties-rev-text">{props.restaurant.description}</text>
    </div>
    </div>
  );
};

export default RestaurantReviewItem;
