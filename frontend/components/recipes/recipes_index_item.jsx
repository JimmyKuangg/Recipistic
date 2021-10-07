import React from 'react'
import { Link } from 'react-router-dom'

export default function RecipesIndexItem(props) {
  return (
    <li className="recipe-item">
      <Link to={`/recipes/${props.recipe.id}`} className="recipe-showcase">
        <div>
          <h1><i className="fas fa-hamburger"></i></h1>
          <div className="recipe-show-details">
            <h2>{props.recipe.title}</h2>
          </div>
          <div className="reviews-and-ratings">
            {props.recipe.average ? <p>{props.recipe.average.toFixed(1)}/5.0</p> : <p>NO RATINGS</p>}
            <p>REVIEWS({props.recipe.numReviews})</p>
          </div>
        </div>
      </Link>
    </li>
  )
}
