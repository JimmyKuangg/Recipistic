import React from 'react'
import RecipesIndexItem from '../../recipes/recipes_index_item';

export default class UserRecipes extends React.Component {

  constructor(props) {
    super(props);
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
      <div id="user-recipe-container">
      <h1>{this.props.username}'s recipes</h1>
        <ul id="users-recipes">
          {this.props.recipes.map((recipe, i) => (
            <RecipesIndexItem 
              id={recipe.id}
              title={recipe.title} 
              average={recipe.average}
              numReviews={recipe.numReviews} 
              key={i} 
            />
          ))}
        </ul>
      </div>
    )
  }
}
