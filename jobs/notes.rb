SCHEDULER.every '5s', :first_in => 0 do
  send_event('notes',  { note1: "test1"})
  send_event('notes',  { note2: "test2"})
end
