import React from 'react'
import ReactDOM from 'react-dom'

class App extends React.Component {

	constructor(props) {
		super(props);
		this.state = {employees: []};
	}

	componentDidMount() {
		// client({method: 'GET', path: '/api/employees'}).done(response => {
		// 	this.setState({employees: response.entity._embedded.employees});
        // });
        //<EmployeeList employees={this.state.employees}/>

	}

	render() {
		return (<div>
                olá mundo
        </div>)
	}
}



ReactDOM.render(
	<App />,
	document.getElementById('react')
)