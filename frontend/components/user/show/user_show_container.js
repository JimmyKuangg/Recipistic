import { connect } from "react-redux";
import { receiveRecipe } from "../../../actions/recipe_actions";
import { findUser } from "../../../actions/user_actions";
import UserShow from "./user_show";

const mapStateToProps = (state, ownProps) => ({
  user: state.entities.users[ownProps.match.params.id],
})

const mapDispatchToProps = dispatch => ({
  findUser: id => dispatch(findUser(id)),
  receiveRecipe: userId => dispatch(receiveRecipe(userId)),
})

export default connect(mapStateToProps, mapDispatchToProps)(UserShow);