import React from 'react'
import Error from '../errors/error';

export default class LoginForm extends React.Component {

  constructor(props){
    super(props);

    this.state = {
      username: '',
      password: '',
    }

    this.handleSubmit = this.handleSubmit.bind(this);
    this.demoLogin = this.demoLogin.bind(this);
  }

  componentWillUnmount() {
    this.props.clearErrors();
  }

  handleSubmit(e) { 
    e.preventDefault();
    this.props.login(this.state)
      .then(() => this.props.closeModal());
  }

  demoLogin(e) {
    e.preventDefault();
    let username = 'boneappleteeth';
    let password = 'proshef123';
    this.props.login({
      username, password
    }).then(() => this.props.closeModal());
  }

  updateField(field){
    return (e) => this.setState({[field]: e.target.value})
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
          <br/>
          <input 
            id="login-password"
            type="password" 
            value={this.state.password} 
            placeholder="PASSWORD" 
            onChange={this.updateField('password')} 
          />
          <br/>
          <button type="submit">Login</button>
        </form>
        <div className="form-buttons">
          <button onClick={this.demoLogin}>Demo Login</button>
          <button onClick={this.props.fetchSignup}>Sign up instead</button>
        </div>
        <ul>
          {this.props.errors.map((error, i) => (
            <Error error={error} key={i}/>
          ))}
        </ul>
      </div>
    )
  }
}
