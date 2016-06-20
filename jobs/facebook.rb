
require 'net/http'
require 'json'

SCHEDULER.every '5m', :first_in => 0 do |job|
  uri = URI('https://graph.facebook.com/#{facebook_id}?access_token=#{access_token}=fan_count')
  response = Net::HTTP.get_response(uri)
  data = JSON.parse(response.body)
  send_event('facebook_likes', current: data['fan_count'])
end
