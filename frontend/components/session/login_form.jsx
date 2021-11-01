import React from 'react';
import Error from '../errors/error';

export default class LoginForm extends React.Component {
  constructor(props) {
    super(props);

    this.state = {
      username: '',
      password: '',
    };

    this.handleSubmit = this.handleSubmit.bind(this);
    this.demoLogin = this.demoLogin.bind(this);
  }

  componentWillUnmount() {
    this.props.clearErrors();
  }

  handleSubmit(e) {
    e.preventDefault();
    this.props.login(this.state).then(() => this.props.closeModal());
  }

  demoLogin(e) {
    e.preventDefault();
    let username = 'demouser';
    let password = 'DeMoUsEr555';
    this.props
      .login({
        username,
        password,
      })
      .then(() => this.props.closeModal());
  }

  updateField(field) {
    return (e) => this.setState({ [field]: e.target.value });
  }

  render() {
    return (
      <div className="modal-text">
        <h2>Recipistic</h2>
        <form onSubmit={this.handleSubmit}>
          <input
            id="login-username"
            type="text"
            value={this.state.username}
            placeholder="USERNAME"
            onChange={this.updateField('username')}
          />
          <br />
          <input
            id="login-password"
            type="password"
            value={this.state.password}
            placeholder="PASSWORD"
            onChange={this.updateField('password')}
          />
          <br />
          <ul>
            {this.props.errors.map((error, i) => (
              <Error error={error} key={i} />
            ))}
          </ul>
          <button type="submit">Login</button>
        </form>
        <div className="form-buttons">
          <button className="demo-login" onClick={this.demoLogin}>
            Demo Login
          </button>
          <div className="other-form-container">
            <h3>Not registered yet?</h3>
            <button className="other-form" onClick={this.props.openOther}>
              Sign up instead
            </button>
          </div>
        </div>
        <button className="close-form" onClick={this.props.closeModal}>
          X
        </button>
      </div>
    );
  }
}
