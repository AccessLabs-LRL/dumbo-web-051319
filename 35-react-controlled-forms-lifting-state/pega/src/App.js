import React from 'react';
import Sidebar from './Sidebar'
import Chat from './Chat'
import './App.css'
import initialAppData from './data.js'

class App extends React.Component {
  state = {
    currentUser: initialAppData.current_user,
    channels: initialAppData.channels,
    currentChannel: initialAppData.channels[3]
  }

  handleNewMessage = (messageText) => {
    const newMessage = {
      user: {
        ...this.state.currentUser
      },
      content: {
        sent: "some-date",
        text: messageText
      }
    }

    const updatedChannel = {
      ...this.state.currentChannel,
      messages: [...this.state.currentChannel.messages, newMessage]
    }

    // let's use map instad!!! :) 
    const updatedChannels = this.state.channels.map(channel => {
    	if (channel.name === updatedChannel.name) {
    		return updatedChannel
    	}
    	return channel
    })

    // const updatedChannels = [...this.state.channels].filter(channel => channel.name !== updatedChannel.name)
    // updatedChannels.push(updatedChannel)

    this.setState({currentChannel: updatedChannel, channels: updatedChannels})
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
    this.setState({channels: [...this.state.channels, newChannel]})
  }


  render() {
    console.log(this.state)
    const channels = this.state.channels.map(channel => {
      return channel.name
    })
    return (
      <div className="grid-container">
          <Sidebar
            onChannelClick={this.handleChannelClick}
            onNewChannel={this.handleNewChannel}
            user={this.state.currentUser}
            channels={channels} />
          <Chat
            onNewMessage={this.handleNewMessage}
            channel={this.state.currentChannel}
            user={this.state.currentUser} />
      </div>
    );
  }
}

export default App;
