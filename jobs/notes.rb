SCHEDULER.every '5s', :first_in => 0 do
  send_event('notes',  { note1: "test1" })
  send_event('notes',  { note2: "test2"})
  send_event('notes',  { note3: "test3" })
  send_event('notes',  { note4: ""})
  send_event('notes',  { note5: ""})
  send_event('notes',  { note6: ""})
  send_event('notes',  { note7: ""})
  send_event('notes',  { note8: ""})
  send_event('notes',  { note9: ""})
end
