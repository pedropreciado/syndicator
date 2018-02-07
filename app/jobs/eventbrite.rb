require 'json'
require 'rest-client'

url = "https://www.eventbriteapi.com/v3/events/"
headers = {
  "Authorization": "Bearer D27ROP4U6HEJYB62AXSS"
}
unless Job.all.empty?
  Job.all.each do |event|

    data = {
      "event.name.html": event.name,
      "event.start.utc": event.start_time,
      "event.end.utc": event.end_time,
      "event.currency": "USD",
      "event.start.timezone": event.time_zone,
      "event.end.timezone": event.time_zone,
    }

    RestClient.post(url, data.to_json, headers=headers)
    event.destroy!
  end
end
