import React from 'react'
import RecipesIndexItem from '../../recipes/recipes_index_item';

export default class UserShow extends React.Component {
  constructor(props){
    super(props);
  }

  componentDidMount() {
    this.props.findUser(this.props.match.params.id);
  }

  componentDidUpdate(prevProps) {
    if (this.props.match.params.id !== prevProps.match.params.id) {
      this.props.findUser(this.props.match.params.id);
    }
  }

  render() {
    if (!this.props.user) {
      return 'user doesn"t exist';
    }


    return (
      <div id="user-show">
        <header id="user-header"> 
          <div id="header-image"/>
          <h2><i className="fas fa-hamburger"></i></h2> 
          <h2>{this.props.user.username}</h2>
        </header>
        {this.props.user.bio ? <p id="user-bio">{this.props.user.bio}</p> : ''}
        <div id="user-recipe-container">
          <h1>{this.props.user.username}'s recipes</h1>
            <ul id="users-recipes">
              {this.props.recipes.map((recipe, i) => (
                <RecipesIndexItem 
                  id={recipe.id}
                  title={recipe.title} 
                  average={recipe.average}
                  numReviews={recipe.numReviews}
                  key={i} 
                />
              ))}
            </ul>
        </div>
      </div>
    )
  }
}
