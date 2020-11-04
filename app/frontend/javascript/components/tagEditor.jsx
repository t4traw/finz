import {render, h, Component} from 'preact'
import TokenInput from 'preact-token-input'

/** @jsx h */

class Tags extends Component {
  constructor() {
    super();
    this.state = { tags: props.tags };
  }

  render() {
    return (
      <form class="tags">
        <TokenInput value={this.tags} />
      </form>
    )
  }
}

render(<Tags />, document.getElementById("tagEditor"))