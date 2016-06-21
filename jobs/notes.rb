SCHEDULER.every '5s', :first_in => 0 do |job|

    send_event "notes", { note1: "", note2: "", note3: "" }

end
