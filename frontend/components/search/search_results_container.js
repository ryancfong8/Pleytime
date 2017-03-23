import { connect } from 'react-redux';
import SearchResults from './search_results';
import { searchRestaurants } from "../../actions/search_actions";

const mapStateToProps = (state) => ({
  searches: state.searches
});

const mapDispatchToProps = (dispatch) => ({
  searchRestaurants: (searchTerm) => dispatch(searchRestaurants(searchTerm))
});

export default connect(
  mapStateToProps,
  mapDispatchToProps
)(SearchResults);
