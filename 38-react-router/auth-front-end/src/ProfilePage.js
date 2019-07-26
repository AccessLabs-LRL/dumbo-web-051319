import React, { Component } from 'react';
import { Link } from 'react-router-dom'

class ProfilePage extends Component {
  componentDidMount() {
    if (!localStorage.token) {
      this.props.history.push('/login')
    }
  }

  render () {
    return (
      <div>
        {
          this.props.username ?
          (`Welcome, ${this.props.username}!`):
          ('Getting your stuff...')
        }
        <ul>
          <li>
            <Link className="my-cool-link" to="/messages">Go to my messages</Link>
          </li>
        </ul>
      </div>
    );
  }
}

export default ProfilePage;
