import {render, h, Component} from 'preact'

/** @jsx h */

class App extends Component {
  state = {value: ''}

  onInput = e => {
    console.log(e)
    this.setState({value: e.target.value})
  }

  render () {
    return (
      <div>
        <input type="text" onInput={this.onInput}/>
        {/* <input type="file" name="post[image]" id="post_image" /> */}
      </div>
    )
  }
}

render(<App />, document.getElementById("app"));