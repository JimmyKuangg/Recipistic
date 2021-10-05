import React from 'react'

export default class EditReviewForm extends React.Component{
  constructor(props) {
    super(props);

    for(let i = 0; i < this.props.reviews.length; i++){
      if (this.props.reviews[i].reviewerId === this.props.currentUser) {
        this.state = this.props.reviews[i];
      }
    }
  }

  componentDidMount() {
    console.log(this.state);
  }

  handleChange(e) {
    this.setState({body: e.target.value})
  }

  handleSubmit(e) {
    e.preventDefault();
    this.props.updateReview(this.state)
      .then(() => this.props.closeModal());
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
