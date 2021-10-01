import React from 'react'

export default function RecipeIngredientItem(props) {
  return (
    <div>
      <li className="ingredient">{props.ingredient.description}</li>
    </div>
  )
}
