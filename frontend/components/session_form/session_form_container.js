import { connect } from "react-redux";
import { withRouter } from "react-router-dom";
import { login, logout } from "../../actions/session_actions";
import SessionForm from "./session_form";

const mapStateToProps = (state) => {
  console.log(state);
  return {
    loggedIn: state.session.currentUser
  }

};

const mapDispatchToProps = (dispatch) => {
  return {
    login: (user) => dispatch(login(user)),
  }
};

export default withRouter(connect(
  mapStateToProps,
  mapDispatchToProps
)(SessionForm));
