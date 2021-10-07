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

  handleClick(star) {
    return(e) => {
      switch(star){
        case 'star1':
          this.setState({rating: 1});
          break;
        case 'star2':
         this.setState({rating: 2});
         break;
        case 'star3':
          this.setState({rating: 3});
          break;
        case 'star4':
          this.setState({rating: 4});
          break;
        case 'star5':
          this.setState({rating: 5});
          break;
        default:
          this.setState({rating: 0});
      }
    }
  }
  
  render() {
    return (
      <div className="modal-text">
        <h2>Recipistic</h2>
        <form onSubmit={this.handleSubmit.bind(this)}>
          <h3>Leave a Review</h3>
          <textarea
            className="review-input"
            value={this.state.body}
            onChange={this.handleChange('body').bind(this)}
          />
          <div className="rating-form">
            <label>{this.state.rating < 1 ? <i className="far fa-star"></i> : <i className="fas fa-star"></i>}
              <input type="radio" value="one-star" onClick={this.handleClick('star1')}/>
            </label>
            <label>{this.state.rating < 2 ? <i className="far fa-star"></i> : <i className="fas fa-star"></i>}
              <input type="radio" value="two-stars" onClick={this.handleClick('star2')}/>
            </label>
            <label>{this.state.rating < 3 ? <i className="far fa-star"></i> : <i className="fas fa-star"></i>}
              <input type="radio" value="three-stars" onClick={this.handleClick('star3')}/>
            </label>
            <label>{this.state.rating < 4 ? <i className="far fa-star"></i> : <i className="fas fa-star"></i>}
              <input type="radio" value="four-stars" onClick={this.handleClick('star4')}/>
            </label>
            <label>{this.state.rating < 5 ? <i className="far fa-star"></i> : <i className="fas fa-star"></i>}
              <input type="radio" value="five-stars" onClick={this.handleClick('star5')}/>
            </label>
          </div>
          <button type="submit">Post Review</button>
        </form>
      </div>
    )
  }
}
