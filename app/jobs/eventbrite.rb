require 'json'
require 'rest-client'

url = "https://www.eventbriteapi.com/v3/events/"
headers = {
  "Authorization": "Bearer D27ROP4U6HEJYB62AXSS"
}

unless Job.all.empty?
  Job.all.each do |event|

    start_date = "#{event.start_date}T#{event.time}:00Z"
    start_date = "#{event.end_date}T#{event.end_date}:00Z"

    data = {
      "event.name.html": event.name,
      "event.start.utc": start_date,
      "event.end.utc": end_date,
      "event.currency": "USD",
      "event.start.timezone": event.time_zone,
      "event.end.timezone": event.time_zone
    }

    data.to_a.each { |k, v| p v}
    p ">>>>> job: " + event.name

    response = RestClient.post(url, data.to_json, headers=headers)
    p JSON.parse(response)

  end
end
