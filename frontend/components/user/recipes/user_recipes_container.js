import { connect } from 'react-redux';
import { receiveRecipes, clearRecipes } from '../../../actions/recipe_actions';
import UserRecipes from './user_recipes';

const mapStateToprops =  state => ({
  recipes: Object.values(state.entities.recipes),
})

const mapDispatchToProps = dispatch => ({
  receiveRecipes: userId => dispatch(receiveRecipes(userId)),
})

export default connect(mapStateToprops, mapDispatchToProps)(UserRecipes)