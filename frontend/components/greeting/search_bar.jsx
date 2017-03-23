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
    return hashHistory.push("/");
  }

  render () {
    return(
      <div>
      <form onSubmit={this.handleSubmit}>
        <label>Search:
          <input type="text" onChange={this.update('inputVal')} />
        </label>
        <input type="submit" value="Go" />
      </form>
    </div>
  );
  }
}

export default SearchBar;
