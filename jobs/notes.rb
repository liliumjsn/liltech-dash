SCHEDULER.every '5s', :first_in => 0 do |job|

    send_event "notes", { note1: "test1", note2: "test2", note3: "test3" }

end
