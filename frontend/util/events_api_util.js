export const fetchEvents = () => {
  return $.ajax({
    method: "GET",
    url: "/api/skills"
  })
}

export const createEvent = (newEvent) => {
  console.log(newEvent);
  return $.ajax({
    method: "POST",
    url: "/api/events",
    data: newEvent
  })
};
