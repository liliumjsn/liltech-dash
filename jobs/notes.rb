SCHEDULER.every '5s', :first_in => 0 do |job|

    notes = {
        note1: "test1",
        note2: "test2"
      }

    send_event("notes", {notes: notes})

end
