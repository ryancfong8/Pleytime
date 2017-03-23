import { Router, Route, IndexRoute, hashHistory } from 'react-router';
import App from './app';
import SessionFormContainer from './sessions/session_form_container';
import { Provider } from 'react-redux';
import React from 'react';
import RestaurantsContainer from './restaurants/restaurants_container';
import RestaurantContainer from './restaurants/restaurant_container';
import ReviewFormContainer from './reviews/review_form_container';
import RestaurantPhotoContainer from './restaurants/restaurant_photo_container';
import SearchResultsContainer from './search/search_results_container';

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
          <IndexRoute component={ RestaurantsContainer } />
          <Route path="search" component={SearchResultsContainer} />
          <Route path="restaurants/:restaurantId" component={RestaurantContainer} />
          <Route path="restaurants/:restaurantId/photos" component={RestaurantPhotoContainer} />

          <Route path="restaurants/:restaurantId/reviews/new" component={ReviewFormContainer} />
          <Route path="restaurants/:restaurantId/reviews/:reviewId/edit" component={ReviewFormContainer} />
        </Route>
      </Router>
    </Provider>
  );
};

export default Root;
