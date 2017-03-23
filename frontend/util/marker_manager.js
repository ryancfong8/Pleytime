import React from 'react';

class MarkerManager {
  constructor (map) {
    this.map = map;
    this.markers = [];
  }

  updateMarkers(restaurants) {
    this.restaurants = restaurants;
    this._restaurantsToAdd(this.restaurants).forEach((restaurant) => (
      this._createMarkerFromRestaurant(restaurant)
    ));
    this._markersToRemove().forEach((restaurant) => (
      this._removeMarker(restaurant)
    ));
  }

  _restaurantsToAdd(restaurants) {
    const currentRestaurants = this.markers.map( marker => marker.restaurantId );
    return restaurants.filter( restaurant => !currentRestaurants.includes(restaurant.id) );
  }

  _createMarkerFromRestaurant(restaurant) {
    const pos = new google.maps.LatLng(restaurant.lat, restaurant.long);
    const marker = new google.maps.Marker({
      position: pos,
      map: this.map,
      restaurantId: restaurant.id
    });
    this.markers.push(marker);
  }

  _markersToRemove(){
    const restaurantIds = this.restaurants.map( restaurant => restaurant.id );
    return this.markers.filter( marker => !restaurantIds.includes(marker.restaurantId) );
  }

  _removeMarker(marker) {
    const idx = this.markers.indexOf( marker );
    this.markers[idx].setMap(null);
    this.markers.splice(idx, 1);
  }

}

export default MarkerManager;
