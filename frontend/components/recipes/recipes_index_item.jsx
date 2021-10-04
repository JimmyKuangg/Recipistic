import React from 'react'
import { Link } from 'react-router-dom'

export default function RecipesIndexItem(props) {
  return (
    <li className="recipe-item">
      <Link to={`/recipes/${props.recipe.id}`} className="recipe-showcase">
        <div>
          <h2><i className="fas fa-hamburger"></i></h2>
          <div className="recipe-show-details">
            <h2>{props.recipe.title}</h2>
          </div>
          <div className="reviews-and-ratings">
            <p>Ratings</p>
            <p>Reviews</p>
          </div>
        </div>
      </Link>
    </li>
  )
}
