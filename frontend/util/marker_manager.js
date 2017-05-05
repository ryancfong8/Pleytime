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
      restaurantId: restaurant.id,
      title: restaurant.name,
    });
    this.markers.push(marker);

    // const rating = (num) => {
    //   const star = <text>★</text>;
    //   const emptyStar = <text>☆</text>;
    //   switch(num) {
    //     case 5:
    //       return <text class="Star-Rating-5">{star}{star}{star}{star}{star}</text>;
    //     case 4:
    //       return <text class="Star-Rating-4">{star}{star}{star}{star}{emptyStar}</text>;
    //     case 3:
    //       return <text class="Star-Rating-3">{star}{star}{star}{emptyStar}{emptyStar}</text>;
    //     case 2:
    //       return <text class="Star-Rating-2">{star}{star}{emptyStar}{emptyStar}{emptyStar}</text>;
    //     case 1:
    //       return <text class="Star-Rating-1">{star}{emptyStar}{emptyStar}{emptyStar}{emptyStar}</text>;
    //     case 0:
    //       return <text class="Star-Rating-0">{emptyStar}{emptyStar}{emptyStar}{emptyStar}{emptyStar}</text>;
    //   }
    // };

    let contentString = (
      "<section class='info-message'>" +
      `<text class = "small-title">${restaurant.name}</text>` +
      `<img class = "small-picture" src=${restaurant.photos[0].url} />` +
      `<text>${restaurant.address}</text>` +
      `<text>${restaurant.city_params}</text>` +
      "</section>"
    );
    // `<text>${restaurant.price}</text>` +
    // `${rating(restaurant.averageRating)}` +

    let infowindow = new google.maps.InfoWindow({
      content: contentString
      // disableAutoPan: true
    });

    marker.addListener('mouseover', function() {
      infowindow.open(this.map, marker);
    });

    marker.addListener('mouseout', function() {
      infowindow.close(this.map, marker);
    });

    let restaurantItem = document.getElementById(`restaurant_index_item-${restaurant.id}`);
    if (restaurantItem) {
      restaurantItem.onmouseenter = () => {
        this.markers.forEach(otherMarker => {
          otherMarker.setOpacity(0.3);
        });
        marker.setOpacity(1);
        infowindow.open(this.map, marker);
      };
      restaurantItem.onmouseleave = () => {
        this.markers.forEach(otherMarker => {
          otherMarker.setOpacity(1);
        });
        infowindow.close(this.map, marker);
      };
      }


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

  // bounceMarker(restaurant) {
  // if (restaurant) {
  //   const currentMarker = this.markers.filter(marker => marker.restaurantId === restaurant.id);
  //   currentMarker[0].setAnimation(google.maps.Animation.BOUNCE);
  //   setTimeout(() => currentMarker[0].setAnimation(null), 4000);
  // } else if (restaurant) {
  //   const currentMarker = this.markers.filter(marker => marker.restaurantId === restaurant.id);
  //   if (currentMarker[0]) {
  //     currentMarker[0].setAnimation(null);
  //   }
  // }
// }

}

export default MarkerManager;
