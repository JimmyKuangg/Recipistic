import React from 'react'

export default function UserFavoritesItem(props) {
  return (
    <div>
      <li>Hello! I am a recipe from your recipe table with the id of {props.favorite.id}</li>
    </div>
  )
}
