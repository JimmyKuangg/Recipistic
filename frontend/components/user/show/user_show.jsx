import React from 'react'
import UserRecipesContainer from '../recipes/user_recipes_container';

export default class UserShow extends React.Component {
  constructor(props){
    super(props);
  }

  componentDidMount() {
    this.props.findUser(this.props.match.params.id);
  }

  componentDidUpdate(prevProps) {
    if (this.props.match.params.id !== prevProps.match.params.id) {
      this.props.findUser(this.props.match.params.id);
      this.props.receiveRecipes(this.props.userId);
    }
  }

  render() {
    if (!this.props.user) {
      return 'user doesn"t exist';
    }

    return (
      <div id="user-show">
        <header id="user-header"> 
          <h2>User image will show up here</h2> 
          <h2>{this.props.user.username}</h2>
        </header>
        {this.props.user.bio ? <p>{this.props.user.bio}</p> : ''}
        <UserRecipesContainer userId={this.props.user.id}/>
      </div>
    )
  }
}
