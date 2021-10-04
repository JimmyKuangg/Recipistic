import { connect } from "react-redux";
import { receiveFavorites, clearFavorites } from "../../../actions/favorite_actions";
import UserFavorites from "./user_favorites";

const mapStateToProps = state => ({
  favorites: Object.values(state.entities.favorites),
  currentUserId: state.session.id,
})

const mapDispatchToProps = dispatch => ({
  receiveFavorites: userId => dispatch(receiveFavorites(userId)),
  clearFavorites: () => dispatch(clearFavorites()),
})

export default connect(mapStateToProps, mapDispatchToProps)(UserFavorites);