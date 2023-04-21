package require http
package require json

global api_url

# set the URL for the API endpoint and your API key
set api_url "https://api.openweathermap.org/data/2.5/weather"
set api_key "API_HERE"

# define the weather proc to fetch the weather data from the API
proc weather {nick uhost handle channel arg} {
  # check if a city was provided as an argument
  if {$arg == ""} {
    putquick "PRIVMSG $channel :Please provide a city name."
    return
  }

  # build the API request URL with the city name and API key
  set request_url "$api_url?q=$arg&units=metric&appid=$api_key"

  # fetch the weather data from the API using HTTP
  set weather [http::geturl $request_url]
  set weather_data [http::data $weather]
  http::cleanup $weather

  # parse the JSON response data
  set weather_json [json::json2dict $weather_data]

  # check if the API returned an error message
  if {[dict exists $weather_json "message"]} {
    set error_message [dict get $weather_json message]
    putquick "PRIVMSG $channel :Error: $error_message"
    return
  }

  # extract the weather data from the response
  set city [dict get $weather_json name]
  set description [dict get [lindex [dict get $weather_json weather] 0] description]
  set temp [dict get [dict get $weather_json main] temp]

  # output the weather data to the channel
  putquick "PRIVMSG $channel :Current weather in $city: $description, $temp°C"
}

# bind the !weather command to the weather proc
bind pub - "!weather" weather

puts "d0m3r custom weather by interdome"
