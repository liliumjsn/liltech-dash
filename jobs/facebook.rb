
require 'net/http'
require 'json'

facebook_id ='142285229525207'
access_token = '593668544144964|i2xVZ4G78mZROfPX5NzeyrjetxA'

#https://graph.facebook.com/142285229525207?access_token=593668544144964|i2xVZ4G78mZROfPX5NzeyrjetxA&fields=fan_count

SCHEDULER.every '5m', :first_in => 0 do |job|
  #uri = URI('https://graph.facebook.com/#{facebook_id}?access_token=#{access_token}=fan_count')
  uri = URI::HTTP.build({:scheme => https,:host => graph.facebook.com, :path => "/#{facebook_id}?access_token=#{access_token}&fields=fan_count"})
  response = Net::HTTP.get_response(uri)
  data = JSON.parse(response.body)
  send_event('facebook_likes', current: data['fan_count'])
end
