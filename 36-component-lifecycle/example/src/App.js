import React, { Component } from 'react';
import './App.css';

class App extends Component {

  constructor(props) {
    super(props)
    console.log('im currently being constructed!')
    this.state = {
      hello: 'yo'
    }
  }


  componentDidMount() {
    this.setState({hello: 'sup'})
    console.log('im ALIVEEEEE!! (which means on the DOM and ready for action)')
  }

  componentDidUpdate() {
    console.log('i was just completely rerendered and now back fully on the DOM and ready for action!!')
  }

  componentWillUnmount() {
    console.log('im DYING!! (which means Im about to be removed from the DOM and not usable to anyone)')
  }

  render() {
    // this.setState({hi:'hiiii'})
    console.log("I'm in the rendering process and this is my state: ", this.state)
    return (
      <div className="App">
      {this.state.hello}
      </div>
    );
  }
}

export default App;
