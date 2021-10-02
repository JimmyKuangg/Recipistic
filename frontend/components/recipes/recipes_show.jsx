import React from 'react'
import RecipeIngredientItem from './recipe_ingredient_item';

export default class RecipesShow extends React.Component {

  constructor(props) {
    super(props);
  }

  componentDidMount() {
    this.props.receiveRecipe(this.props.match.params.id);
  }

  componentDidUpdate(prevProps) {
    if (this.props.match.params.id !== prevProps.match.params.id) {
      this.props.receiveRecipe(this.props.match.params.id);
    }
  }

  render() {
    if (!this.props.recipe) {
      return 'no recipe found';
    } 
    
    console.log(this.props.ingredients);

    return (
      <div id="recipe-show">
        <h1>{this.props.recipe.title}</h1>
        <h2>{this.props.recipe.body}</h2>
        <div id="recipe-container">
          <h2>Ingredients</h2>
          <h2>Serves: {this.props.recipe.servings}</h2>
          <ul id="recipe-ingredients">
            {this.props.ingredients.map((ingredient, i) => (
             <RecipeIngredientItem ingredient={ingredient} key={i} />
            ))}
          </ul>
          <img src={this.props.photoUrl} />
        </div>
      </div>
    )
  }
}
