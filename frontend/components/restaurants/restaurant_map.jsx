import React from 'react';
import MarkerManager from "../../util/marker_manager.js";

class RestaurantMap extends React.Component{
  constructor (props) {
    super(props);
  }

  componentDidMount() {
    let mapOptions = {
      center: { lat: 37.78, lng: -122.385 },
      zoom: 13
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

  componentDidUpdate(){
    this.MarkerManager.updateMarkers(this.props.restaurants);
  }

  render() {
    return(
      <div className='map-container' ref={ map => this.mapNode = map }>

      </div>
    );
  }
}

export default RestaurantMap;
