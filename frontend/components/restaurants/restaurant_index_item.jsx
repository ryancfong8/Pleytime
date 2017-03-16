import React from 'react';
import { Link } from 'react-router';

const RestaurantIndexItem = (props) => (
  <li>
    <Link to={`/restaurants/${props.restaurant.id}`}>{props.restaurant.name}</Link>
    <p>Address: {props.restaurant.address}</p>
    <p>Rating: </p>
    <p>Price: {props.restaurant.price}</p>
    <p>Hours: {props.restaurant.hours}</p>
    <p>{props.restaurant.description}</p>
  </li>
);

export default RestaurantIndexItem;
