import React from 'react'
import UserFavoritesItem from './user_favorites_item';

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
            <UserFavoritesItem favorite={favorite} key={i} />
          ))}
        </ul>
      </div>
    )
  }
}
