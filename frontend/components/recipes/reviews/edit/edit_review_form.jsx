import React from 'react'

export default class EditReviewForm extends React.Component{
  constructor(props) {
    super(props);

    this.state = this.props.review
  }

  handleChange(e) {
    this.setState({body: e.target.value})
  }

  handleSubmit(e) {
    e.preventDefault();
    this.props.updateReview(this.state)
      .then(() => this.props.closeModal());
    console.log('hello!');
  }

  render() {
    return (
      <div className="modal-text">
        <h2>Recipistic</h2>
        <form onSubmit={this.handleSubmit.bind(this)}>
          <h2>Edit Review</h2>
          <textarea
            className="review-input"
            value={this.state.body}
            onChange={this.handleChange.bind(this)}
          />
          <button type="submit">Edit Review</button>
        </form>
      </div>
    )
  }
}
