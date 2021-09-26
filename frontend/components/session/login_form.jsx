import React from 'react'
import { Link } from 'react-router-dom';
import Error from '../errors/error';

export default class LoginForm extends React.Component {

  constructor(props){
    super(props);

    this.state = {
      username: '',
      password: '',
    }

    this.handleSubmit = this.handleSubmit.bind(this);
  }

  handleSubmit(e) { 
    e.preventDefault();
    this.props.login(this.state);
  }

  updateField(field){
    return (e) => this.setState({[field]: e.target.value})
  }

  render() {
    return (
      <div>
        <h2>Login</h2>
        <form onSubmit={this.handleSubmit}>
          <label>Username:
            <input type="text" value={this.state.username} onChange={this.updateField('username')} />
          </label>
          <br/>
          <label>Password:
            <input type="password" value={this.state.password} onChange={this.updateField('password')} />
          </label>
          <br/>
          <button type="submit">Login</button>
        </form>
        <Link to="/signup">Sign up</Link>
        <ul>
          {this.props.errors.map((error, i) => (
            <Error error={error} />
          ))}
        </ul>
      </div>
    )
  }
}
