import React from 'react';
import MessageCreator from './MessageCreator'
import MessageList from './MessageList'

class Chat extends React.Component {
  render() {
    return (
      <div>
        <MessageList channel={this.props.channel}/>
        <MessageCreator onNewMessage={this.props.onNewMessage} user={this.props.user}/>
      </div>
    )
  }
}

export default Chat;
