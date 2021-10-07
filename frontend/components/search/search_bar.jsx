import React from 'react'

export default class SearchBar extends React.Component {
  constructor(props) {
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
  }

  handleUpdate(e) {
    this.setState({search: e.target.value})
  }

  render() {
    return (
      <div id="searchbar-container">
        <form onSubmit={this.handleSubmit}>
           <input 
            type="text"
            id="navbar-search"
            value={this.state.search}
            placeholder="Search for a recipe"
            onChange={this.handleUpdate}
          />
          <button type="submit">Submit</button>
        </form>
      </div>
    )
  }
}
