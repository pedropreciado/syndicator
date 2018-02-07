import React from "react";
import { Link, withRouter } from  "react-router-dom";
import NavBarContainer from "../nav_bar/nav_bar_container";

class SessionForm extends React.Component {

  constructor(props) {
    super(props);

    this.state = {
      username: "",
      password: ""
    }

    this.handleSubmit = this.handleSubmit.bind(this);
    this.clearField = this.clearField.bind(this);
  }

  render() {

    return (
      <div>

        <div>
          <form onSubmit={this.handleSubmit}>
            <h1>
              Login
            </h1>

            <input
              type="text"
              value={this.state.username}
              onChange={this.update("username")}
              placeholder="user"
              />

              <input
                type={this.passwordText()}
                value={this.state.password}
                onChange={this.update("password")}
                placeholder="password"
                />

              <input
                id="form-button"
                type="submit"
                className="submit"
                value="login"
              />

          </form>
        </div>

      </div>
    )

  }
}

export default withRouter(SessionForm);
