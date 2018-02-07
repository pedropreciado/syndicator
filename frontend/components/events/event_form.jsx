import React from "react";
let TIMEZONES = require("./timezones");

class EventForm extends React.Component {
  constructor(props) {
    super(props);

    this.state = {
        name: "New Event",
        description: "",
        start_date: "",
        end_date: "",
        start_time: "18:00",
        end_time: "20:00",
        time_zone: "America/Los_Angeles"
    }
    this.update = this.update.bind(this);
    this.handleSubmit = this.handleSubmit.bind(this);
  }

  update(key) {
    return (event) => {
      event.preventDefault();
      this.setState({
          [key]: event.target.value
      })
      console.log(this.state);
    }

  }

  handleSubmit(event) {
    event.preventDefault();

    this.props.createEvent(this.state);
  }

  render() {
    let timezones = TIMEZONES.timezones;

    let todaysDate = new Date();
    let defaultStartTime = "06:00PM";
    let defaultEndTime = "09:00PM";

    return (
      <div>
      <h1>
        EventForm
      </h1>

      <form onSubmit={this.handleSubmit}>
        <h2>
          Create a new event
        </h2>

        Name:
        <input
          type="text"
          placeholder="Name of event"
          onChange={this.update("name")}
          required
          />

        Event Description:
        <textarea
          onChange={this.update("description")}
          defaultValue="Event description"
          >
        </textarea>

        Start Date:
        <input
          type="date"
          min={`${todaysDate.getYear()}-${todaysDate.getMonth()}-${todaysDate.getDay()}`}
          onChange={this.update("start_date")}
          />

        End Date:
        <input
          type="date"
          min={`${todaysDate.getYear()}-${todaysDate.getMonth()}-${todaysDate.getDay()}`}
          onChange={this.update("end_date")}
          />

        Start Time:
        <input
          type="time"
          onChange={this.update("start_time")}
          defaultValue="18:00"
          required
          />

        End Time:
        <input
          type="time"
          onChange={this.update("end_time")}
          defaultValue="20:00"
          required
          />

        TimeZone:
        <select onChange={this.update("time_zone")}>
          {
            timezones.map((name) => (
              <option value={`${name}`}>{`${name}`}</option>
            ))
          }

          </select>
          <input
            type="submit"
            value="Create Event"
            />
      </form>
      </div>
    )
  }
}

export default EventForm;
