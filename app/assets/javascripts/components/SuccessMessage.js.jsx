class SuccessMessage extends React.Component {
  constructor(props) {
    super()
  }

  render() {
    // return null
    if(this.props.message === '') {
      return null;
    } else {
      return <div>{this.props.message}</div>
    }
  }
}
