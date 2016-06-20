class Dashing.Notes extends Dashing.Widget
  @accessor 'note1'
  @accessor 'note2'
  @accessor 'note3'
  @accessor 'note4'

  onData: (data) ->
    if data.status
      # clear existing "status-*" classes
      $(@get('node')).attr 'class', (i,c) ->
        c.replace /\bstatus-\S+/g, ''
      # add new class
      $(@get('node')).addClass "status-#{data.status}"
