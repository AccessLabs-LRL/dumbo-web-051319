import React, { Component } from "react";
import ReactDOM from "react-dom";
import "./index.css";
import logo from "./logo.svg";
import "./App.css";
import { createStore } from 'redux'

// console.log(createStore)

const reducer = (state={ count: 0 }, action) => {
  switch (action.type) {
    case 'INCREMENT_COUNT':
      return { count: state.count + action.number }

    case 'DECREMENT_COUNT':
      return { count: state.count - action.number }

    default:
      return state
  }
}

const store = createStore(reducer)

// we want redux to manage this: { count: 0 }
class App extends Component {
  render() {
    return (
      <div className="App">
        <Header />
        <Counter />
      </div>
    );
  }
}

class Header extends Component {
  componentDidMount() {
    store.subscribe(() => this.forceUpdate())
  }

  renderDescription = () => {
    const remainder = store.getState().count % 5;
    const upToNext = 5 - remainder;
    return `The current count is less than ${store.getState().count + upToNext}`;
  };

  render() {
    return (
      <header className="App-header">
        <img src={logo} className="App-logo" alt="logo" />
        <h1 className="App-title">Welcome to React</h1>
        <h3>{this.renderDescription()}</h3>
      </header>
    );
  }
}

class Counter extends Component {
  componentDidMount() {
    store.subscribe(() => this.forceUpdate())
  }

  increment = () => {
    // this.setState({ count: this.state.count + 1 })
    store.dispatch({ type: 'INCREMENT_COUNT', number: 68 })
  }

  decrement = () => {
    // this.setState({ count: this.state.count - 1 })
    store.dispatch({ type: 'DECREMENT_COUNT', number: 1 })
  }

  render() {
    return (
      <div className="Counter">
        <h1>{store.getState().count}</h1>
        <button onClick={this.decrement}> - </button>
        <button onClick={this.increment}> + </button>
      </div>
    );
  }
}

ReactDOM.render(<App />, document.getElementById("root"));
