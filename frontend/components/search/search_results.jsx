import React from 'react';

class SearchResults extends React.Component {
  constructor (props) {
    super(props);
  }

  componentWillMount(){
    this.props.searchRestaurants(this.props.location.query.query);
  }

  render () {
    return (
      <div className='restaurants'>
        <div className='restaurants-items'>
          <h1>Restaurants</h1>
          <ul>
            {this.props.searches.map((restaurant) => (
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

export default SearchResults;
