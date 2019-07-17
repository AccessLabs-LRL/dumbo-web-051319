import React from 'react';

// <ChannelList channels={['#fish', '#food']} />
// new ChannelList({channels: ['#fish', '#food']})

class ChannelList extends React.Component {

  state = {
    newChannel: ''
  }

  handleClick = () => {
    this.props.onNewChannel(this.state.newChannel)
  }

  handleChange = (e) => {
    this.setState({ newChannel: e.target.value})
  }

  handleChannelClick = (e) => {
    this.props.onChannelClick(e.target.id)
  }

  render() {
    console.log(this.props)
    const channels = this.props.channels.map(channel => {
    	return (
        <li key={channel}>
          <button onClick={this.handleChannelClick} id={channel}>{channel}</button>
        </li>
      )
    })

    return (
      <div className="navigation_channels_list">
        <h2>Channels</h2>
        <input
          value={this.state.newChannel}
          onChange={this.handleChange}
          type="text"
          placeholder="New channel name" />
        <button onClick={this.handleClick}>+</button>
        <ul>
        {channels}
        </ul>
      </div>
    )
  }
}

export default ChannelList;
