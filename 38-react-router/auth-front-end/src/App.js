import React, { Component } from 'react';
import LoginPage from './LoginPage'
import SignupPage from './SignupPage'
import ProfilePage from './ProfilePage'
import MessagesPage from './MessagesPage'
import MessagePage from './MessagePage'
import HomePage from './HomePage'
import FourOhFourPage from './FourOhFourPage'
import { Switch, Route } from 'react-router-dom'
import './App.css';

class App extends Component {
  state = {
    username: ''
  }


  componentDidMount() {
    console.log(this.props)
    if (localStorage.token) {
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
    // this.redirect('profile')
  }

  render () {
    return (
      <Switch>
      <Route path="/messages/:id" component={MessagePage} />
        <Route
          path="/messages"
          render={(routerProps) => <MessagesPage {...routerProps} username={this.state.username} />} />

        <Route
          path="/profile"
          render={(routerProps) => <ProfilePage {...routerProps} username={this.state.username} />} />

        <Route path="/signup" component={SignupPage} />
        <Route path="/login" component={LoginPage} />
        <Route exact path="/" component={HomePage} />
        <Route component={FourOhFourPage} />
      </Switch>
    )
  }
}

export default App;
