import React from 'react';
import RestaurantIndexItem from './restaurant_index_item';
import RestaurantMap from './restaurant_map';

class Restaurants extends React.Component {
  constructor (props){
    super(props);

    // this.state = {
    //   inputVal: ""
    // };
    //
    // this.handleInput = this.handleInput.bind(this);
    // this.handleSubmit = this.handleSubmit.bind(this);
  }

  // componentWillMount () {
  //   this.props.fetchRestaurants(this.state.inputVal, this.props.bounds);
  // }

  // componentDidMount(){
  //   this.props.fetchRestaurants();
  // }

  handleInput (e) {
    this.setState({inputVal: e.currentTarget.value});
  }


  handleSubmit (e) {
    e.preventDefault();
    this.props.fetchRestaurants(this.state.inputVal, this.props.bounds);
  }

  render () {
    return (
      <div>
        <div className='restaurants-items'>
          <h1>Restaurants</h1>
          <ul>
            {this.props.restaurants.map((restaurant) => (
              <RestaurantIndexItem key = {restaurant.id} restaurant = {restaurant}/>
            ))}
          </ul>
        </div>
        <div>
          <RestaurantMap restaurants = {this.props.restaurants} updateFilter = {this.props.updateFilter}/>
        </div>
      </div>
    );
  }
}

export default Restaurants;


//   matches() {
//   const matches = [];
//   if (this.state.inputVal.length === 0) {
//     return this.props.restaurants;
//   }
//
//   this.props.restaurants.forEach(restaurant => {
//     let sub = restaurant.name.slice(0, this.state.inputVal.length);
//     if (sub.toLowerCase() === this.state.inputVal.toLowerCase()) {
//       matches.push(restaurant);
//     }
//   });
//
//   if (matches.length === 0) {
//     matches.push('No matches');
//   }
//
//   return matches;
// }
