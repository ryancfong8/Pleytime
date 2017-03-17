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
      <div className="restaurant-page">
        <div className="restaurant-content">
          <div className="r-des-map">
            <div className = "r-des">
              <h1>{this.props.restaurant.name}</h1>
              <div className="r-rating-hours">
                <div className="r-rating">
                  <text>Rating: </text>
                  <div className="r-price">
                    <text>Price: </text>
                    <text className="restaurant-index-price">{this.props.restaurant.price}</text>
                  </div>
                </div>
                <div className="r-hours">
                  <text>Hours: {this.props.restaurant.hours}</text>
                </div>
              </div>
            <br />
              <text>{this.props.restaurant.address}</text>
              <text>{this.props.restaurant.city_params}</text>
              <text>{this.props.restaurant.phone}</text>
              <br />
              <p>{this.props.restaurant.description}</p>
            </div>
          <div className="r-map">
            <h2>Map</h2>
          </div>
        </div>
          <div className="r-imgs">
            <h2>Pictures</h2>
            <img src={this.props.restaurant.image_url} />
          </div>
          <div className="r-reviews">
            <h2>Reviews</h2>
          </div>
        </div>
      </div>
    );
  }
}

export default Restaurant;
