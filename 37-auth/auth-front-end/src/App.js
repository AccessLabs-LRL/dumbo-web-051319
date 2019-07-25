import React, { Component } from 'react';
import LoginPage from './LoginPage'
import SignupPage from './SignupPage'
import ProfilePage from './ProfilePage'
import './App.css';

class App extends Component {
  state = {
    page: 'login'
  }

  redirect = (page) => {
    this.setState({page: page})
  }

  componentDidMount() {
    if (localStorage.token) {
      this.redirect('profile')
    }
  }

  render () {
    switch(this.state.page) {
      case 'login':
        return <LoginPage redirect={this.redirect}/>
      case 'signup':
        return <SignupPage />
      case 'profile':
        return <ProfilePage />
      default:
        return <LoginPage />
    }
  }
}

export default App;
