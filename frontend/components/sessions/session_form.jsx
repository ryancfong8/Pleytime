import React from 'react';
import { Link, withRouter } from 'react-router';
import Modal from 'react-modal';
import ModalStyle from './modal_style';

class SessionForm extends React.Component {
	constructor(props) {
		super(props);
				this.state = {
					username: "",
					password: "",
					modalOpen: false,
					modalType: 'Log In'
				};
		this.handleSubmit = this.handleSubmit.bind(this);
		this.openModal = this.openModal.bind(this);
		this.closeModal = this.closeModal.bind(this);
	}

	componentDidUpdate() {
		this.redirectIfLoggedIn();
	}

	redirectIfLoggedIn() {
		if (this.props.loggedIn) {
			this.props.router.push("/");
		}
	}

	update(field) {
		return e => this.setState({
			[field]: e.currentTarget.value
		});
	}

	handleSubmit(e) {
	 e.preventDefault();
	 if (this.state.modalType === 'Log In') {
			this.props.login(this.state);
		}
		else {
			this.props.signup(this.state);
		}
	}

	// navLink() {
	// 	if (this.state.modalType === "login") {
  //   	return <button className="modal-button" onClick={this.openModal.bind(this, 'signup')}>Sign Up Instead!</button>;
	// 	}
	// 	else {
	// 		return <button className="modal-button" onClick={this.openModal.bind(this, 'login')}>Login instead!</button>;
	//  	}
	// }

	openModal(modalType) {
		this.setState({
			modalOpen: true,
			modalType
		});
	}

	closeModal() {
		this.setState({modalOpen: false});
	}

	guestUser () {
		if (this.state.modalType === 'Log In') {
			return (
				<button className="guestUser" onClick={this.props.loginGuestUser}>Log In As Guest User</button>
			);
		}
		else {
			return <div></div>;
		}
	}

	renderErrors() {
		if (this.props.errors) {
			return(
				<ul>
					{this.props.errors.map((error, i) => (
						<li key={`error-${i}`}>
							{error}
						</li>
					))}
				</ul>
			);
		}
		else {
			return (<div></div>);
		}
	}

	render() {
		return (
				<div className = "login">
				<nav className="login-signup">
					<button onClick={this.openModal.bind(this, 'Log In')}>Log In</button>
					<button onClick={this.openModal.bind(this, 'Sign Up')}>Sign Up</button>
				</nav>
				<Modal
					contentLabel="Modal"
					isOpen={this.state.modalOpen}
					onRequestClose={this.closeModal}
					style={ModalStyle}>
					<h3 className = "modal-title">Welcome to Pleytime!</h3>
					{this.guestUser()}
					<form>
						{this.renderErrors()}
						<div className="login-form">
							<label className="label"> Username:
								<input type="text"
									value={this.state.username}
									onChange={this.update("username")}
									className="login-input" />
							</label>
							<br/>
							<label className="label"> Password:
								<input type="password"
									value={this.state.password}
									onChange={this.update("password")}
									className="login-input" />
							</label>
							<br/>
							<button className="modal-submit" onClick={this.handleSubmit} >{this.state.modalType}</button>
						</div>
					</form>
				</Modal>
			</div>
		);
	}

}

export default withRouter(SessionForm);
