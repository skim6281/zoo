class ErrorMessage extends React.Component {
  constructor(props) {
    super()
  }

  render() {
    if(this.props.message === '') {
      return null;
    } else {
      return <div>{this.props.message}</div>
    }
  }
}
