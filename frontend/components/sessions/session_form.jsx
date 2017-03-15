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
					modalType: 'login'
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
	 if (this.state.modalType === 'login') {
			this.props.login(this.state);
		}
		else {
			this.props.signup(this.state);
		}
	}

	navLink() {
		if (this.state.modalType === "login") {
    	return <button onClick={this.openModal.bind(this, 'signup')}>Sign Up Instead!</button>;
		}
		else {
			return <button onClick={this.openModal.bind(this, 'login')}>Login instead!</button>;
	 	}
	}

	openModal(modalType) {
		this.setState({
			modalOpen: true,
			modalType
		});
	}

	closeModal() {
		this.setState({modalOpen: false});
	}

	renderErrors() {
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

	render() {
		return (
				<div className = "login">
				<nav className="login-signup">
					<button onClick={this.openModal.bind(this, 'login')}>Login</button>
					&nbsp;or&nbsp;
					<button onClick={this.openModal.bind(this, 'signup')}>Sign up!</button>
				</nav>
				<Modal
					contentLabel="Modal"
					isOpen={this.state.modalOpen}
					onRequestClose={this.closeModal}
					style={ModalStyle}>
					Welcome to Pleytime!
					<br/>
					{this.navLink()}
					<form onSubmit={this.handleSubmit} >
						{this.renderErrors()}
						<div className="login-form">
							<br/>
							<label> Username:
								<input type="text"
									value={this.state.username}
									onChange={this.update("username")}
									className="login-input" />
							</label>
							<br/>
							<label> Password:
								<input type="password"
									value={this.state.password}
									onChange={this.update("password")}
									className="login-input" />
							</label>
							<br/>
							<input type="submit" value="Submit" />
						</div>
					</form>
				</Modal>
			</div>
		);
	}

}

export default withRouter(SessionForm);
