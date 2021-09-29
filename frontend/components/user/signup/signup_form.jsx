import React from 'react'
import Error from '../../errors/error';

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

  componentWillUnmount() {
    this.props.clearErrors();
  }

  handleSubmit(e) { 
    e.preventDefault();
    this.props.signup(this.state)
      .then(() => this.props.closeModal());
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
            className="text-input"
            type="text" 
            value={this.state.username} 
            placeholder="USERNAME" 
            onChange={this.updateField('username')} 
          />
          <br/>
          <input 
            className="text-input"
            type="email" 
            value={this.state.email} 
            placeholder="EMAIL" 
            onChange={this.updateField('email')} 
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
          <ul>
            {this.props.errors.map((error, i) => (
              <Error error={error} key={i}/>
            ))}
          </ul>
          <button type="submit">Sign up</button>
        </form>
        <div className="other-form-container">
          <h3>Already have an account?</h3>
          <button className="other-form" onClick={this.props.openOther}>Login</button>
        </div>
        <button className="close-form" onClick={this.props.closeModal}>X</button>
      </div>
    )
  }
}
