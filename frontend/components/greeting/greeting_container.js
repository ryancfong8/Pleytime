import { connect } from 'react-redux';
import { logout, signup, login } from '../../actions/sessions_actions';
import Greeting from './greeting';
import { fetchRestaurants } from '../../actions/restaurants_actions';

const mapStateToProps = ({ session }) => ({
  currentUser: session.currentUser
});

const mapDispatchToProps = dispatch => ({
  login: (user) => dispatch(login(user)),
  signup: (user) => dispatch(signup(user)),
  logout: () => dispatch(logout()),
  fetchRestaurants: (params)=> dispatch(fetchRestaurants(params))
});

export default connect(
  mapStateToProps,
  mapDispatchToProps
)(Greeting);
