import React from 'react'
import { Link } from 'react-router-dom'

export default function RecipesIndexItem(props) {
  return (
    <li className="recipe-item">
      <Link to={`/recipes/${props.id}`} className="recipe-showcase">
        <div>
          <h2><i className="fas fa-hamburger"></i></h2>
          <div className="recipe-show-details">
            <h2>{props.title}</h2>
          </div>
          <div className="reviews-and-ratings">
            {props.average ? <p>{props.average.toFixed(1)}/5.0</p> : <p>NO RATINGS</p>}
            <p>REVIEWS({props.numReviews})</p>
          </div>
        </div>
      </Link>
    </li>
  )
}
