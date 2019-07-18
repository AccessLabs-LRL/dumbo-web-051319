import React from 'react';
import Sidebar from './Sidebar'
import Chat from './Chat'
import './App.css'


class App extends React.Component {
  state = {
    currentUser: {},
    channels: [],
    currentChannel: {
      messages: []
    }
  }


  componentDidMount() {
    fetch('http://localhost:3000/current_user')
      .then(res => res.json())
      .then(user => this.setState({currentUser: user}))

    fetch('http://localhost:3000/channels')
      .then(res => res.json())
      .then(channels => this.setState({channels: channels, currentChannel: channels[0]}))
  }

  handleNewMessage = (messageText) => {
    const newMessage = {
      id: this.state.currentChannel.messages.length + 1,
      user: {
        ...this.state.currentUser
      },
      content: {
        text: messageText
      }
    }

    const updatedChannel = {
      ...this.state.currentChannel,
      messages: [...this.state.currentChannel.messages, newMessage]
    }

    fetch(`http://localhost:3000/channels/${updatedChannel.id}`, {
      method: 'PATCH',
      headers: {
        'Content-Type':'application/json',
        'Accept':'application/json'
      },
      body: JSON.stringify(updatedChannel)
    })
    // only update state from the response we get back from our server
    .then(res => res.json())
    .then(updatedChannelFromServer => {
      // let's use map instad!!! :)
      const updatedChannels = this.state.channels.map(channel => {
        if (channel.id === updatedChannelFromServer.id) {
          return updatedChannel
        }
        return channel
      })

      this.setState({currentChannel: updatedChannelFromServer, channels: updatedChannels})
    })



    // const updatedChannels = [...this.state.channels].filter(channel => channel.name !== updatedChannel.name)
    // updatedChannels.push(updatedChannel)

  }

  handleChannelClick = (channelName) => {
    const selectedChannel = this.state.channels.find(channel => channel.name === channelName)
    this.setState({currentChannel: selectedChannel})
  }

  handleNewChannel = (channelName) => {
    const newChannel = {
      name: `#${channelName}`,
      messages: []
    }

    fetch('http://localhost:3000/channels', {
      method: 'POST',
      headers: {
        'Content-Type':'application/json',
        'Accept':'application/json'
      },
      body: JSON.stringify(newChannel)
    })
      // only update state from the response we get back from our server
      .then(res => res.json())
      .then(channel => {
        this.setState({channels: [...this.state.channels, channel]})
      })

    // this.setState({channels: [...this.state.channels, newChannel]})

  }


  render() {
    console.log(this.state)
    const channels = this.state.channels.map(channel => {
      return channel.name
    })
    // if (!this.state.currentUser.id) {
    //   return <h1>Please log in!</h1>
    // }
    return (
      <div className="grid-container">
          <Sidebar
            onChannelClick={this.handleChannelClick}
            onNewChannel={this.handleNewChannel}
            user={this.state.currentUser}
            channels={channels} />
            {
              this.state.currentUser.id ? (
                <Chat
                onNewMessage={this.handleNewMessage}
                channel={this.state.currentChannel}
                user={this.state.currentUser} />
              ) : (
                <h1>Please log in!</h1>
              )
            }
      </div>
    );
  }
}

export default App;
