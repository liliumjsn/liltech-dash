SCHEDULER.every '10s', :first_in => 0 do
  send_event('notes',  { "note1"=> "test1"})
end
