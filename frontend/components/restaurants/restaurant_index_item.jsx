import React from 'react';
import { Link } from 'react-router';

const RestaurantIndexItem = (props) => (
  <li className="restaurant-list">
    <div className="restaurant-index">
      <img className = "picture" src={props.restaurant.image_url} />
      <div className="title-properties">
        <Link to={`/restaurants/${props.restaurant.id}`}>{props.restaurant.name}</Link>
        <text>Rating: </text>
        <text>Price: {props.restaurant.price}</text>
      </div>
      <div className="address">
        <text>Address: {props.restaurant.address}</text>
      </div>
    </div>
    <p>{props.restaurant.description}</p>
  </li>
);

export default RestaurantIndexItem;
