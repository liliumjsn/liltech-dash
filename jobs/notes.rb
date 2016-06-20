SCHEDULER.every '5s', :first_in => 0 do
  send_event('notes',  { note1: "test1" + "&nbsp;" })
  send_event('notes',  { note2: "test2" + "&nbsp;" })
  send_event('notes',  { note3: "test3" + "&nbsp;" })
  send_event('notes',  { note4: "" + "&nbsp;" })
  send_event('notes',  { note5: "" + "&nbsp;" })
  send_event('notes',  { note6: "" + "&nbsp;" })
  send_event('notes',  { note7: "" + "&nbsp;" })
  send_event('notes',  { note8: "" + "&nbsp;" })
  send_event('notes',  { note9: "" + "&nbsp;" })
end
