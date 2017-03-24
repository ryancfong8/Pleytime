import React from 'react';
import { Link, hashHistory } from 'react-router';
import SearchBar from "./search_bar";

import SessionFormContainer from '../sessions/session_form_container';

class Greeting extends React.Component {
  constructor(props) {
    super(props);
  }

  sessionLinks() {
    return(
      <SessionFormContainer />
    );
  }

  personalGreeting(currentUser, logout) {
    return(
      <hgroup className="header-group">
        <h2 className="header-name">Hi, {currentUser.username}!</h2>
        <button className="header-button" onClick={logout}>Log Out</button>
      </hgroup>
    );
  }

  searchBar () {
    if (this.props.location !== "/"){
      return (
        <SearchBar fetchRestaurants={this.props.fetchRestaurants}/>
      );
    }
  }

  render() {

    return(
      <div className = "header">
        <Link className="logo" to="/">Pleytime</Link>
        {this.searchBar()}
        {this.props.currentUser ? this.personalGreeting(this.props.currentUser, this.props.logout) : this.sessionLinks()}
      </div>
    );
  }
}

export default Greeting;
