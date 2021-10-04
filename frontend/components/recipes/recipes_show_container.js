import { connect } from "react-redux";
import { receiveRecipe, clearRecipe } from "../../actions/recipe_actions";
import RecipesShow from "./recipes_show";

const mapStateToprops = state => ({
  recipe: state.entities.recipes,
  ingredients: Object.values(state.entities.ingredients),
  steps: Object.values(state.entities.steps),
  photoUrl: state.entities.recipes.photoUrl, 
})

const mapDispatchToProps = dispatch => ({
  receiveRecipe: recipeId => dispatch(receiveRecipe(recipeId)),
  clearRecipe: () => dispatch(clearRecipe()),
})

export default connect(mapStateToprops, mapDispatchToProps)(RecipesShow);