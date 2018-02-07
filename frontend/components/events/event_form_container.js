import { connect } from "react-redux";
import { withRouter } from "react-router-dom";
import EventForm from "./event_form";
import { fetchEvents, createEvent } from "../../actions/events_actions";

const mapStateToProps = (state, ownProps) => {
  return {

  }
}

const mapDispatchToProps = (dispatch, ownProps) => {
  return {
    fetchEvent: (id) => dispatch(fetchEvent(id)),
    createEvent: (newEvent) => dispatch(createEvent(newEvent))
  }
}

export default withRouter(connect(
  mapStateToProps,
  mapDispatchToProps
)(EventForm))
