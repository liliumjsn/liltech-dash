SCHEDULER.every '5s', :first_in => 0 do
  send_event('note1',  { note1: "test1"})
end
