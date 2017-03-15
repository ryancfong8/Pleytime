import React from 'react';
import ReactDOM from 'react-dom';
import * as APIUtil from './util/sessions_api_util.js';
import configureStore from './store/store.js';
import Root from './components/root';
import { login, signup, logout } from './actions/sessions_actions.js';
import Modal from 'react-modal';

document.addEventListener('DOMContentLoaded', () => {
    const root = document.getElementById('root');
    Modal.setAppElement(document.body);
    let store;
    if (window.currentUser) {
      const preloadedState = { session: { currentUser: window.currentUser } };
      store = configureStore(preloadedState);
    } else {
      store = configureStore();
    }
    ReactDOM.render(<Root store={store} />, root);
    window.store = store;
});
