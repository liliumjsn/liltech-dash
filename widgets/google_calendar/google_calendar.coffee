Batman.mixin Batman.Filters,

  startText: (str_start)->
    now = moment.utc()
    start = moment.unix(str_start)
    "#{start.from(now)}"

class Dashing.GoogleCalendar extends Dashing.Widget
