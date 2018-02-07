import { connect } from "react-redux";
import { withRouter } from "react-router-dom";
import { login, logout, signup} from "../../actions/session_actions";
import SessionForm from "./session_form";

const mapStateToProps = (state) => {
  return {
    loggedIn: Boolean(state.session.currentUser),
    errors: state.errors.session
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
