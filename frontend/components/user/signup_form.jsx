import React from 'react'
import { Link } from 'react-router-dom';
import Error from '../errors/error';
import LoginContainer from '../session/login_container';

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
        <h2>Recipistic</h2>
        <form onSubmit={this.handleSubmit}>
          <input type="text" value={this.state.username} placeholder="USERNAME" onChange={this.updateField('username')} />
          <br/>
          <input type="email" value={this.state.email} placeholder="EMAIL" onChange={this.updateField('email')} />
          <br/>
          <input type="password" value={this.state.password} placeholder="PASSWORD" onChange={this.updateField('password')} />
          <br/>
          <button type="submit">Sign up</button>
        </form>
        <ul>
          {this.props.errors.map((error, i) => (
            <Error error={error} key={i}/>
          ))}
        </ul>
      </div>
    )
  }
}
