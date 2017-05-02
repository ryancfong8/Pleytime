import React from 'react';
import { hashHistory } from 'react-router';

class SearchBar extends React.Component {
  constructor (props) {
    super(props);

    this.handleSubmit = this.handleSubmit.bind(this);
    this.state = ({
      inputVal: ""
    });
  }

  update(property) {
    return e => {
      e.preventDefault();
      this.setState({[property]: e.target.value});
    };
  }

  handleInput (e) {
    this.setState({inputVal: e.currentTarget.value});
  }


  handleSubmit (e) {
    e.preventDefault();
    this.props.fetchRestaurants(this.state.inputVal);
    return hashHistory.push("/restaurants");
  }

  toggleClass () {
    if (this.props.location === "/") {
      return "Home-Search";
    }
    else {
      return "Search-Form";
    }
  }

  render () {
    return(
      <div>
      <form className = {this.toggleClass()} onSubmit={this.handleSubmit}>
        <label className="Search">
          <input className="Search-Input" type="text" onChange={this.update('inputVal')} placeholder = "Find restaurant, Japanese, $, etc."/>
        </label>
        <input className="Search-Button" type="image" alt="Submit" src="http://res.cloudinary.com/ryancfong8/image/upload/v1490308615/magnifying-glass-white_ymieca.png" />
      </form>
    </div>
  );
  }
}

export default SearchBar;
// 🔍
