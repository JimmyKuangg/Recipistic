import React from 'react'

export default class CreateReviewForm extends React.Component {
  constructor(props) {
    super(props);

    this.state = this.props.review;
  }

  handleChange(field) {
    return (e) => this.setState({[field]: e.target.value})
  }

  handleSubmit(e) {
    e.preventDefault();
    this.props.newReview(this.state)
      .then(() => this.props.closeModal());
  }

  render() {
    return (
      <div className="modal-text">
        <h2>Recipistic</h2>
        <form onSubmit={this.handleSubmit.bind(this)}>
          <h2>Leave a Review</h2>
          <textarea
            className="review-input"
            value={this.state.body}
            onChange={this.handleChange('body').bind(this)}
          />
          <button type="submit">Post Review</button>
        </form>
      </div>
    )
  }
}
