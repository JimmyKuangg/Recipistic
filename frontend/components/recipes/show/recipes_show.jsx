import React from 'react'
import { Link } from 'react-router-dom';
import RecipeIngredients from '../recipe_ingredients';
import RecipeSteps from '../recipe_steps';
import RecipeReviews from '../reviews/show/recipe_reviews';
import RatingStars from './rating_stars';

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
  
  componentWillUnmount() {
    this.props.clearRecipe();
  }

  render() {
    if (this.props.recipe === {}) {
      return 'no recipe found';
    } 
  
    return (
      <div id="recipe-show">
        <div id="recipe-header">
          <div id="recipe-info">
            <h1>{this.props.recipe.title}</h1>
            <p>By <Link to={`/users/${this.props.recipe.userId}`}>{this.props.recipe.author}</Link></p>
            <div id="rating">
              {this.props.recipe.average ? 
                <h2>{parseFloat(this.props.recipe.average).toFixed(1)}</h2>   
              : ''}
              <RatingStars average={this.props.recipe.average}/>
            </div>
          </div>
          <h2><i className="fas fa-hamburger"></i></h2> 
        </div>
        <div id="recipe-container">
          <div id="recipe-body">
            <h2>{this.props.recipe.body}</h2>
            <h2>Serves: {this.props.recipe.servings}</h2>
          </div>
          <div id="ingredients-steps">
            <RecipeIngredients ingredients={this.props.ingredients} />
            <RecipeSteps steps={this.props.steps} />
          </div>
          <RecipeReviews reviews={this.props.reviews} currentUser={this.props.currentUser}/>
        </div>
      </div>
    )
  }
}
