import React from 'react'
import { Link } from 'react-router-dom';
import Error from '../errors/error';

export default class SignupForm extends React.Component {

  constructor(props){
    super(props);

    this.state = {
      username: '',
      email: '',
      password: '',
    }

    this.handleSubmit = this.handleSubmit.bind(this);
  }

  handleSubmit(e) { 
    e.preventDefault();
    this.props.signup(this.state);
  }

  updateField(field){
    return (e) => this.setState({[field]: e.target.value})
  }

  render() {
    return (
      <div>
        <h2>Sign up</h2>
        <form onSubmit={this.handleSubmit}>
          <label>Username:
            <input type="text" value={this.state.username} onChange={this.updateField('username')} />
          </label>
          <br/>
          <label>Email:
            <input type="email" value={this.state.email} onChange={this.updateField('email')} />
          </label>
          <br/>
          <label>Password:
            <input type="password" value={this.state.password} onChange={this.updateField('password')} />
          </label>
          <br/>
          <button type="submit">Sign up</button>
        </form>
        <Link to="/login">Login</Link>
        <ul>
          {this.props.errors.map((error, i) => (
            <Error error={error} />
          ))}
        </ul>
      </div>
    )
  }
}
