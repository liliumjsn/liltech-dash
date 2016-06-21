require 'net/http'
require 'json'

SCHEDULER.every '2m', :first_in => 0 do |job|
    
    uri = URI('https://dl.dropboxusercontent.com/s/3wbu1d34ey346st/liltech-dash-notes.txt')
    response = Net::HTTP.get_response(uri)
    data = JSON.parse(response.body)

    send_event "notes", {   note1: data['note1'], 
                            note2: data['note2'], 
                            note3: data['note3'], 
                            note4: data['note4'], 
                            note5: data['note5'], 
                            note6: data['note6'], 
                            note7: data['note7'] 
                        }

end
