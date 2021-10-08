import React from 'react'
import { Link } from 'react-router-dom'

export default function RecipesFavoriteItem(props) {
  return (
    <li>
      <Link to={`/recipes/${props.id}`} id="favorite-showcase">
        <img id="favorite-thumbnail" src={props.photoUrl}/>
        <div className="favorite-item-details">
          <h2>{props.title}</h2>
          <p>______________</p>
          <h4>By {props.author}</h4>
        </div>
      </Link>
    </li>
  )
}

