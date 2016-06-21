SCHEDULER.every '5s', :first_in => 0 do |job|

    send_event "notes", {   note1: "test1", 
                            note2: "test2", 
                            note3: "test3", 
                            note4: "test4", 
                            note5: "test5", 
                            note6: "test6", 
                            note7: "test7" 
                        }

end
