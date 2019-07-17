import React from 'react';

class MessageCreator extends React.Component {
  render() {
    return (
      <form style={{background: '#F2F2F2', padding: 5}} className="messages_container_compose">
        <input type="file" />
        <input type="text" name="new_message_text" placeholder={'Send a message!'}/>
        <input type="submit" value="SEND THAT MESSAGE!" />
      </form>
    )
  }
}

export default MessageCreator;
