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
        <h2>Recipistic</h2>
        <form onSubmit={this.handleSubmit}>
          <input 
            className="text-input"
            type="text" 
            value={this.state.username} 
            placeholder="USERNAME" 
            onChange={this.updateField('username')} 
          />
          <br/>
          <input 
            className="text-input"
            type="password" 
            value={this.state.password} 
            placeholder="PASSWORD" 
            onChange={this.updateField('password')} 
          />
          <br/>
          <button type="submit">Login</button>
        </form>
        <h3>Don't have an account?</h3><Link to="/signup">Sign up</Link>
        <ul>
          {this.props.errors.map((error, i) => (
            <Error error={error} key={i}/>
          ))}
        </ul>
      </div>
    )
  }
}
