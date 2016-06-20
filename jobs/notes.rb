SCHEDULER.every '10s', :first_in => 0 do
  send_event('notes',  { "note1"=> "test1", "note2"=> "test2", "note3"=> "test3", "note4"=> "test4 })
end
