import React from 'react';
import starRating from '../starRating';
import { Link } from 'react-router';


const FeaturedRestaurant = (props) => {
  return(
    <li className="featured-restaurant">
        <img className="featured-pic" src={props.restaurant.photos[0].url} />
        <div className = 'f-title-properties'>
          <Link className="f-restaurant-index-name" to={`/restaurants/${props.restaurant.id}`}>{props.restaurant.name}</Link>
          <text className = "Gray">{starRating(props.restaurant.averageRating)} </text>
          <text className = "f-reviews">{props.restaurant.numReviews} Reviews</text>
          <div>
            <text className= "Gray"></text>
            <text className="restaurant-index-price">{props.restaurant.price}</text>
          </div>

      <div className="f-description">
        <text className = 'f-description'>{props.restaurant.description}</text>
      </div>
      </div>
    </li>
  );
};

export default FeaturedRestaurant;

// <div className="r-address">
//   <text>{props.restaurant.address}</text>
//   <text>{props.restaurant.city_params}</text>
//   <text>{props.restaurant.phone}</text>
// </div>
