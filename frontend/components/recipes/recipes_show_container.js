import { connect } from "react-redux";
import { receiveRecipe } from "../../actions/recipe_actions";
import RecipesShow from "./recipes_show";

const mapStateToprops = state => ({
  recipe: state.entities.recipes,
  ingredients: Object.values(state.entities.ingredients)
})

const mapDispatchToProps = dispatch => ({
  receiveRecipe: recipeId => dispatch(receiveRecipe(recipeId)),
})

export default connect(mapStateToprops, mapDispatchToProps)(RecipesShow);