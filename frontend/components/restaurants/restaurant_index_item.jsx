import React from 'react';
import { Link } from 'react-router';

const RestaurantIndexItem = (props) => (
  <li className="restaurant-list">
    <div className="restaurant-index">
      <img className = "picture" src={props.restaurant.photos[0].url} />
      <div className="title-properties">
        <Link className="restaurant-index-name" to={`/restaurants/${props.restaurant.id}`}>{props.restaurant.name}</Link>
        <text className = "restaurant-index-rating">Rating: </text>
        <div>
          <text>Price: </text>
          <text className="restaurant-index-price">{props.restaurant.price}</text>
        </div>
      </div>
      <div className="r-address">
        <text>{props.restaurant.address}</text>
        <text>{props.restaurant.city_params}</text>
        <text>{props.restaurant.phone}</text>
      </div>
    </div>
    <div className="r-description">
      <text>{props.restaurant.description}</text>
    </div>
  </li>
);

export default RestaurantIndexItem;
