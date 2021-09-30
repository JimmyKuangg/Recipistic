import React from 'react'

export default function UserRecipesItem(props) {
  return (
    <div>
      <li>{props.recipe.title}</li>
    </div>
  )
}
