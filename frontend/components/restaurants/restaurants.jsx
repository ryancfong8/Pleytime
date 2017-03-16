import React from 'react';
import RestaurantIndexItem from './restaurant_index_item';

class Restaurants extends React.Component {
  constructor (props){
    super(props);
  }

  componentDidMount(){
    this.props.fetchRestaurants();
  }

  render () {
    return (
      <div>
        <ul>
          {this.props.restaurants.map((restaurant) => (
            <RestaurantIndexItem key = {restaurant.id} restaurant = {restaurant}/>
          ))}
        </ul>
      </div>
    );
  }
}

export default Restaurants;
