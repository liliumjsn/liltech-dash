SCHEDULER.every '5s', :first_in => 0 do
  send_event('note1',  { note1: "test1"})
  send_event('note2',   "test2")
  send_event('note3',   "test3")
  send_event('note4',   "test4")
  send_event('note5',   "test5")
  send_event('note6',   "test6")
  send_event('note7',   "test7")
end
