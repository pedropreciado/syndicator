require 'json'
require 'rest-client'

url = "https://www.eventbriteapi.com/v3/events/"
headers = {
  "Authorization": "Bearer D27ROP4U6HEJYB62AXSS"
}

unless Job.all.empty?
  Job.all.each do |event|

    start_date = "#{event.start_date}T#{event.start_time}:00Z"
    end_date = "#{event.end_date}T#{event.end_time}:00Z"

    data = {
      "event.name.html" => event.name,
      "event.start.utc" => start_date,
      "event.end.utc" => end_date,
      "event.currency" => "USD",
      "event.start.timezone" =>  event.time_zone,
      "event.end.timezone" => event.time_zone
    }

    data.to_a.each { |k, v| p v}
    p ">>>>> job: " + event.name


    begin
      RestClient.post(url, {
        "event.name.html" => event.name,
        "event.start.utc" => start_date,
        "event.end.utc" => end_date,
        "event.currency" => "USD",
        "event.start.timezone" =>  event.time_zone,
        "event.end.timezone" => event.time_zone
      }, headers=headers)
    rescue RestClient::ExceptionWithResponse => e

    end

  end
end


{"status_code": 400,
  "error_description":
  "There are errors with your arguments: event.start.timezone - This field is required., event.currency - This field is required., event.end.utc - This field is required., {} - Unknown parameter, event.start.utc - This field is required., event.end.timezone - This field is required., event.name.html - This field is required.",
"error": "ARGUMENTS_ERROR"}
