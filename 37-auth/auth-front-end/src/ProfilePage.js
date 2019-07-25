import React, { Component } from 'react';
import './App.css';

class ProfilePage extends Component {
  state = {
    username: ''
  }

  componentDidMount() {
    fetch('http://localhost:3000/profile', {
      headers: {
        Authorization: localStorage.token
      }
    })
    .then(res => res.json())
    .then(profileData => {
      this.setState({username: profileData.username})
    })
  }
  render () {
    return (
      <div>
        {
          this.state.username ?
          (`Welcome, ${this.state.username}!`):
          ('Getting your stuff...')

        }
      </div>
    );
  }
}

export default ProfilePage;
