import React from 'react';
import MarkerManager from "../../util/marker_manager.js";

class SingleRestaurantMap extends React.Component{
  constructor (props) {
    super(props);
  }

  componentDidMount() {
      const mapOptions = {
        center: { lat: this.props.restaurants[0].lat, lng: this.props.restaurants[0].long },
        zoom: 15
      };

    this.map = new google.maps.Map(this.mapNode, mapOptions);
    this.MarkerManager = new MarkerManager(this.map);
    this.MarkerManager.updateMarkers(this.props.restaurants);
    google.maps.event.addListener(this.map, 'idle', () => {
      const { north, south, east, west } = this.map.getBounds().toJSON();
      const bounds = {
        northEast: { lat:north, lng: east },
        southWest: { lat: south, lng: west } };
      // this.props.updateFilter('bounds', bounds);
    });
  }

  componentWillReceiveProps(newProps) {
    const mapOptions = {
      center: { lat: newProps.restaurants[0].lat, lng: newProps.restaurants[0].long },
      zoom: 15
    };

    this.map = new google.maps.Map(this.mapNode, mapOptions);
    this.MarkerManager = new MarkerManager(this.map);
    this.MarkerManager.updateMarkers(newProps.restaurants);
  }

  componentDidUpdate(){
    this.MarkerManager.updateMarkers(this.props.restaurants);
  }

  render() {
    return(
      <div className='map-container2' ref={ map => this.mapNode = map }>

      </div>
    );
  }
}

export default SingleRestaurantMap;
