import React from 'react'

export default function RatingStars(props) {

  let ratingsArr = [];

  let filledStar = (
    <i className="fas fa-star"></i>
  )

  let unfilledStar = (
    <i className="far fa-star"></i>
  )

  let halfFilledStar = (
    <i className="fas fa-star-half-alt"></i>
  )

  for(let i = 1; i <= props.average; i++) {
    ratingsArr.push(filledStar);
  }

  if (props.average % 1 !== 0) {
    ratingsArr.push(halfFilledStar);
  }

  for(let i = 1; i <= 5 - props.average; i++){
    ratingsArr.push(unfilledStar);
  }

  if (!props.average) {
    return ('')
  } 
  
  return (
    <ul className="rating-stars">
      {ratingsArr.map((rating, i) => (<li key={i}>{rating}</li>))}
    </ul>
  )
}
