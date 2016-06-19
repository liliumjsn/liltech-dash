require 'net/https'
require 'json'

# Forecast API Key from https://developer.forecast.io
forecast_api_key = "ce0bfe2217777fc8444980ea637de23c"

# Latitude, Longitude for location
forecast_location_lat = "37.979269"
forecast_location_long = "23.726789"

# Unit Format
# "us" - U.S. Imperial
# "si" - International System of Units
# "uk" - SI w. windSpeed in mph
forecast_units = "si"
  
SCHEDULER.every '5m', :first_in => 0 do |job|
  https = Net::HTTPS.new("api.forecast.io", 443)
  https.use_ssl = true
  https.verify_mode = OpenSSL::SSL::VERIFY_PEER
  response = https.request(Net::HTTPS::Get.new("/forecast/#{forecast_api_key}/#{forecast_location_lat},#{forecast_location_long}?units=#{forecast_units}"))
  forecast = JSON.parse(response.body)  
  forecast_current_temp = forecast["currently"]["temperature"].round
  forecast_hour_summary = forecast["minutely"]["summary"]
  send_event('forecast', { temperature: "#{forecast_current_temp}&deg;", hour: "#{forecast_hour_summary}"})
end
