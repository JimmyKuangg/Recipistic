import React from 'react';
import { connect } from 'react-redux';
import { receiveAllRecipes } from '../../../actions/recipe_actions';
import RecipesIndexItem from '../recipes_index_item';
import SearchBar from '../../search/search_bar';

const mapStateToProps = (state) => ({
  recipes: Object.values(state.entities.recipes),
});

const mapDispatchToProps = (dispatch) => ({
  receiveAllRecipes: () => dispatch(receiveAllRecipes()),
});

class RecipeIndex extends React.Component {
  constructor(props) {
    super(props);
  }

  componentDidMount() {
    this.props.receiveAllRecipes();
  }

  filterRecipes() {
    if (
      !this.props.location.search.includes('=') ||
      this.props.location.search.split('=').length !== 2
    ) {
      return this.props.recipes;
    }

    let searchKeyWords = this.props.location.search.split('=')[1].split('%20'); //Split the search query by the spaces
    let recipeTitleSplit;
    let currentRecipe;
    let currentTitleWord;
    let filteredRecipes = [];

    for (let i = 0; i < this.props.recipes.length; i++) {
      recipeTitleSplit = this.props.recipes[i].title.split(' ');
      currentRecipe = this.props.recipes[i];

      for (let j = 0; j < recipeTitleSplit.length; j++) {
        currentTitleWord = recipeTitleSplit[j];

        for (let l = 0; l < searchKeyWords.length; l++) {
          if (
            currentTitleWord
              .toLowerCase()
              .includes(searchKeyWords[l].toLowerCase()) &&
            !filteredRecipes.includes(currentRecipe)
          ) {
            filteredRecipes.push(currentRecipe);
          }
        }
      }
    }

    return filteredRecipes;
  }

  render() {
    if (this.props.recipes.length === 0) {
      return null;
    }

    let recipesIndex = this.filterRecipes();
    return (
      <div id="recipe-index">
        <SearchBar history={this.props.history} />
        {recipesIndex.length !== 0 ? (
          <ul id="recipe-index-container">
            {recipesIndex.map((recipe, i) => (
              <RecipesIndexItem recipe={recipe} key={i} />
            ))}
          </ul>
        ) : (
          <div id="no-recipes">No recipes found!</div>
        )}
      </div>
    );
  }
}

export default connect(mapStateToProps, mapDispatchToProps)(RecipeIndex);
