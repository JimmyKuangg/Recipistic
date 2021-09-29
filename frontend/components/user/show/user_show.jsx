import React from 'react'

export default class UserShow extends React.Component {
  constructor(props){
    super(props);

  }

  componentDidMount() {
    this.props.findUser(this.props.match.params.id);
  }

  componentDidUpdate(prevProps) {
    if (this.props.match.params.id !== prevProps.match.params.id) {
      this.props.findUser(this.props.match.params.id);
    }
  }

  render() {
    if (!this.props.user) {
      return null;
    }

    return (
      <div id="user-show">
        <header id="user-header"> 
          <h2>User image will show up here</h2> 
          <h2>{this.props.user.username}</h2>
        </header>
      </div>
    )
  }
}
