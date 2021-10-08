import React from 'react'
import { Link } from 'react-router-dom'

export default function RecipesIndexItem(props) {
  return (
    <li className="recipe-item">
      <Link to={`/recipes/${props.recipe.id}`} className="recipe-showcase">
        <div id="recipe-item-container">
          <img id="recipe-thumbnail" src={props.recipe.photoUrl} />
          <div className="recipe-show-details">
            <h2>{props.recipe.title}</h2>
            <div className="reviews-and-ratings">
              {props.recipe.average ? <h4 id="recipe-average">{props.recipe.average.toFixed(1)}/5.0</h4> : <h4>NO RATINGS</h4>}
              <h4>REVIEWS
                <p id="num-reviews">({props.recipe.numReviews})</p>
              </h4>
            </div>
        </div>
      </div>
      </Link>
    </li>
  )
}
