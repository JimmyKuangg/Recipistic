import React from 'react'
import RecipesIndexItem from '../../recipes/recipes_index_item';

export default class UserFavorites extends React.Component {

  constructor(props) {
    super(props);
  }

  componentDidMount() {
    this.props.receiveFavorites(this.props.currentUserId);
  }

  componentWillUnmount() {
    this.props.clearFavorites();
  }

  render() {
    return (
      <div>
        <h1>Your Favorites;</h1>
        <ul>
          {this.props.favorites.map((favorite, i) => (
            <h1>hello!</h1>
          ))}
        </ul>
      </div>
    )
  }
}
