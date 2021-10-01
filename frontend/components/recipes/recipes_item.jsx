import React from 'react'
import { Link } from 'react-router-dom'

export default function RecipesItem(props) {
  return (
    <div className="recipe-item">
      <h1>Recipe photo here</h1>
      <li><Link to={`/recipes/${props.recipe.id}`}>{props.recipe.title}</Link></li>
    </div>
  )
}
