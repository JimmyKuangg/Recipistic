import React from 'react'
import { connect } from 'react-redux'
import { withRouter } from 'react-router'
import { closeModal } from '../../actions/modal_actions';

const mapDispatchToProps = dispatch => ({
  closeModal: () => dispatch(closeModal())
})

class SearchModal extends React.Component{
  constructor(props){
    super(props);
    this.state = {
      search: ''
    }

    this.handleUpdate = this.handleUpdate.bind(this);
    this.handleSubmit = this.handleSubmit.bind(this);
  }

  handleSubmit(e) {
    e.preventDefault();
    let searchThis = this.state.search;
    this.props.history.push(`/recipes?search=${searchThis}`)
    this.props.closeModal()
  }

  handleUpdate(e) {
    this.setState({search: e.target.value})
  }


  render(){
    return (
      <div className="search-modal-text">
        <form onSubmit={this.handleSubmit}>
           <input 
            type="text"
            value={this.state.search}
            placeholder="Find a recipe"
            onChange={this.handleUpdate}
          />
          <button type="submit">Submit</button>
        </form>
      </div>
    )
  }
}

export default withRouter(connect(null, mapDispatchToProps)(SearchModal))