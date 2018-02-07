import { RECEIVE_ALL_EVENTS, RECEIVE_EVENT } from "../actions/events_actions";
import merge from "lodash/merge";

const EventsReducer = (oldState = {}, action) => {
  Object.freeze(oldState);

  switch (action.type) {
    case RECEIVE_ALL_EVENTS:
      return merge({}, action.events)
    case RECEIVE_EVENT:
      return merge({}, oldState, {[action.newEvent.id]: action.newEvent})
    default:
      return oldState;
  }
}
