import React from 'react'
import RecipesFavoriteItem from './recipes_favorite_item';

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
      <div className="favorites-page">
        <div className="favorites-container">
          <h1>My Saved Recipes</h1>
          {this.props.favorites.length !== 0 ? 
            <ul className="favorites-listing">
              {this.props.favorites.map((favorite, i) => (
                <RecipesFavoriteItem
                  id={favorite.id}
                  title={favorite.title}
                  author={favorite.author}
                  photoUrl={favorite.photoUrl}
                  key={i} 
                />
              ))}
            </ul>
          : <h2 id="none-saved">You haven't saved any recipes! Click the heart icon found on recipes to save them!</h2>}
        </div>
      </div>
    )
  }
}
