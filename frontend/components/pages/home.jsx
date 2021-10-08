import React from 'react'
import RecipesIndexItem from '../recipes/recipes_index_item';
import { receiveAllRecipes } from '../../actions/recipe_actions';
import { connect } from 'react-redux';

const mapStateToProps = state => ({
  recipes: Object.values(state.entities.recipes),
})

const mapDispatchToProps = dispatch => ({
  receiveAllRecipes: () => dispatch(receiveAllRecipes())
})

class Home extends React.Component{

  componentDidMount() {
    this.props.receiveAllRecipes();
  }

  sortByRating(recipe1, recipe2) {
    return recipe2.average - recipe1.average
  }

  grabMostPopular() {
    this.props.recipes.sort(this.sortByRating);
  }

  render(){
    {this.grabMostPopular()}
    
    return(
      <div id="homepage">
        <div className="splash"/>
        <h1 id="popular-recipes"> Our Most Popular Recipes </h1>
        <ul id="home-recipes-index">
          {this.props.recipes.slice(0, 5).map((recipe, i) => (
            <RecipesIndexItem recipe={recipe} key={i} />
          ))}
        </ul>
      </div>
    )
  }
}

export default connect(mapStateToProps, mapDispatchToProps)(Home);