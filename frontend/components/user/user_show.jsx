import React from 'react'

export default class UserShow extends React.Component {
  constructor(props){
    super(props);
  }

  componentDidMount(){
    debugger
    this.props.findUser(this.props.match.params.id);
    console.log(this.props.user);
  }

  componentWillUnmount(){
    console.log(this.props.user);
  }

  render() {
    debugger
    if (!this.props.user) {
      return null;
    }

    return (
      <div>
        <h1> {this.props.user.username} </h1>
      </div>
    )
  }
}
