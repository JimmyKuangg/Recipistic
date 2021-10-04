import React from 'react'

export default function RecipeIngredients(props) {
  return(
    <div>
      <h1 className="instruction-header">Ingredients</h1>
        <ul>
          {props.ingredients.map((ingredient, i) => (
            <li className="instruction-item" key={i}>{ingredient.description}</li>
          ))}
        </ul>
    </div>
  )
}