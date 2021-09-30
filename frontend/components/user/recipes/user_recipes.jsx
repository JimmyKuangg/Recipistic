import React from 'react'
import UserRecipesItem from './user_recipes_item';

export default class UserRecipes extends React.Component {

  constructor(props) {
    super(props);
  }

  componentDidMount() {
    this.props.receiveRecipes(this.props.userId);
  }

  render() {
    if (this.props.recipes.length === 0) {
      return (
        <div id="no-recipes">
          <h1>This user currently does not have any recipes </h1>
        </div>
      )
    }
    
    return (
      <div id="users-recipes">
        <ul>
          {this.props.recipes.map((recipe, i) => (
            <UserRecipesItem recipe={recipe} key={i} />
          ))}
        </ul>
      </div>
    )
  }
}
