export const fetchEvents = () => {
  return $.ajax({
    method: "GET",
    url: "/api/skills"
  })
}

export const createEvent = (newEvent) => {
  return $.ajax({
    method: "POST",
    url: "/api/events",
    data: { newEvent }
  })
};
