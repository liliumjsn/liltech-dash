
require 'net/http'
require 'json'

facebook_id ='142285229525207'
access_token = '593668544144964|i2xVZ4G78mZROfPX5NzeyrjetxA'

#https://graph.facebook.com/142285229525207?access_token=593668544144964|i2xVZ4G78mZROfPX5NzeyrjetxA&fields=fan_count

SCHEDULER.every '5m', :first_in => 0 do |job|
  http = Net::HTTP.new("graph.facebook.com")
  http.use_ssl = true
  http.verify_mode = OpenSSL::SSL::VERIFY_NONE # read into this
  response = http.get_response(Net::HTTP::Get.new("/#{facebook_id}?access_token=#{access_token}&fields=fan_count"))
  data = JSON.parse(response.body)
  send_event('facebook_likes', current: data['fan_count'])
end
