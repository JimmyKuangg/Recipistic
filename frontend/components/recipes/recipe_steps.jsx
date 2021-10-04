import React from 'react'

export default function RecipeSteps(props) {
  return(
    <div>
      <h1 className="instruction-header">Steps</h1>
        <ul>
          {props.steps.map((step, i) => (
            <div id="step-item" key={i}>
              <p>Step {i+1}</p>
              <li className="instruction-item">{step.description}</li>
            </div>
          ))}
        </ul>
    </div>
  )
}