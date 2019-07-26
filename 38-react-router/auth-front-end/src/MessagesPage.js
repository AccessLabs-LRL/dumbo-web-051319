import React, { Component } from 'react';
import './App.css';

class MessagesPage extends Component {
  componentDidMount() {
    // if (localStorage.token) {
    //   t
    //   fetch(`http://localhost:3000/messages/${}`)
    // }
  }

  render () {
    console.log(this.props)
    return (
      <div>
        Hi, {this.props.username}! Here are your messages:
      </div>
    );
  }
}

export default MessagesPage;
