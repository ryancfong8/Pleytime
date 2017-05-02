import { Router, Route, IndexRoute, hashHistory } from 'react-router';
import App from './app';
import SessionFormContainer from './sessions/session_form_container';
import { Provider } from 'react-redux';
import React from 'react';
import RestaurantsContainer from './restaurants/restaurants_container';
import RestaurantContainer from './restaurants/restaurant_container';
import ReviewFormContainer from './reviews/review_form_container';
import RestaurantPhotoContainer from './restaurants/restaurant_photo_container';
import HomeContainer from './home/home_container';

const Root = ({ store }) => {
  const _ensureLoggedIn = (nextState, replace) => {
    const currentUser = store.getState().session.currentUser;
    if (!currentUser) {
      replace('/');
    }
  };
  const _redirectIfLoggedIn = (nextState, replace) => {
    const currentUser = store.getState().session.currentUser;
    if (currentUser) {
      replace('/');
    }
  };

  return (
    <Provider store={ store }>
      <Router history={ hashHistory }>
        <Route path="/" component={ App } >
          <IndexRoute component={ HomeContainer } />
          <Route path="restaurants" component={RestaurantsContainer} />
          <Route path="restaurants/:restaurantId" component={RestaurantContainer} />
          <Route path="restaurants/:restaurantId/photos" component={RestaurantPhotoContainer} />

          <Route path="restaurants/:restaurantId/reviews/new" component={ReviewFormContainer} onEnter={ _ensureLoggedIn }/>
          <Route path="restaurants/:restaurantId/reviews/:reviewId/edit" component={ReviewFormContainer} onEnter={ _ensureLoggedIn }/>
        </Route>
      </Router>
    </Provider>
  );
};

export default Root;
