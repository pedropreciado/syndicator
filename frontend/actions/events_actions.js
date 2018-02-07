import * as EventsAPIUtil from "../util/events_api_util";

export const RECEIVE_ALL_EVENTS = "RECEIVE_ALL_EVENTS";
export const RECEIVE_EVENT = "RECEIVE_EVENT";

export const fetchEvents = (id) => dispatch => (
  EventsAPIUtil.fetchEvents().then((events) => dispatch(receiveAllEvents(events)))
);

export const createEvent = (newEvent) => dispatch => (
  EventsAPIUtil.createEvent(newEvent).then((newEvent) => dispatch(receiveEvent(newEvent)))
);

const receiveAllEvents = events => ({
  type: RECEIVE_ALL_EVENTS,
  events
});

const receiveEvent = newEvent => ({
  type: RECEIVE_EVENT,
  newEvent
})
