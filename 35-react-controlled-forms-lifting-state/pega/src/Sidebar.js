import React from 'react';
import Profile from './Profile'
import ChannelList from './ChannelList'

class Sidebar extends React.Component {
  render() {
    return (
      <div>
        <Profile user={this.props.user}/>
        <ChannelList
          onChannelClick={this.props.onChannelClick}
          onNewChannel={this.props.onNewChannel}
          channels={this.props.channels}/>
      </div>
    )
  }
}

export default Sidebar;
