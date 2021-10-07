import { connect } from 'react-redux';
import { receiveRecipe } from '../../../actions/recipe_actions';
import UserRecipes from './user_recipes';

const mapStateToprops =  state => {
  debugger
  return {
    recipes: Object.values(state.entities.recipes),
}}

const mapDispatchToProps = dispatch => ({
  receiveRecipe: userId => dispatch(receiveRecipe(userId)),
})

export default connect(mapStateToprops, mapDispatchToProps)(UserRecipes)