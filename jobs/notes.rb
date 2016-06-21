require 'net/http'
require 'json'

SCHEDULER.every '10m', :first_in => 0 do 
    
    uri = URI('https://dl.dropboxusercontent.com/s/3wbu1d34ey346st/liltech-dash-notes.txt')
    response = Net::HTTP.get_response(uri)
    data = JSON.parse(response.body)

    send_event "notes", {   note1: data['note1'], 
                            note2: "test2", 
                            note3: "test3", 
                            note4: "test4", 
                            note5: "test5", 
                            note6: "test6", 
                            note7: "test7" 
                        }

end
