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
      <div className='restaurants'>
        <div>
          <h1>Restauarants</h1>
          <ul>
            {this.props.restaurants.map((restaurant) => (
              <RestaurantIndexItem key = {restaurant.id} restaurant = {restaurant}/>
            ))}
          </ul>
        </div>
        <div className = 'map-index'>
          <h1>Map</h1>
        </div>
      </div>
    );
  }
}

export default Restaurants;
