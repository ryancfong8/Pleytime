import React from 'react';

class Restaurant extends React.Component {
  constructor(props){
    super(props);
  }

  componentDidMount(){
    this.props.fetchRestaurant(this.props.params.restaurantId);
  }

  componentWillReceiveProps(newProps){
    if (this.props.params.restaurantId !== newProps.params.restaurantId) {
      this.props.fetchRestaurant(newProps.params.restaurantId);
    }
  }

  routeIsCorrect() {
    return parseInt(this.props.params.restaurantId) === this.props.restaurant.id;
  }

  render() {
    return (
      <div>
        <h1>{this.props.restaurant.name}</h1>
        <p>Address: {this.props.restaurant.address}</p>
        <p>Rating: </p>
        <p>Price: {this.props.restaurant.price}</p>
        <p>Hours: {this.props.restaurant.hours}</p>
        <p>{this.props.restaurant.description}</p>
        <h2>Reviews</h2>
      </div>
    );
  }
}

export default Restaurant;
