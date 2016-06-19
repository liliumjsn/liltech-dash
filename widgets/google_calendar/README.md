## Yet another Google Calendar Dashing widget

![Yet another Google Calendar Dashing widget](http://i41.tinypic.com/2i1ieqq.png)

### Description

[Dashing](http://shopify.github.com/dashing) widget to display first two coming-up [Google Calendar](https://www.google.com/calendar/) events.

Basically, you do not need more than two events on your dashboard, but it can be easily extended to the neighboring cells and show, say, 4 events instead of 2.

This is an alternative to [existing widget](https://gist.github.com/designoid/5781087), designed by @designoid, that allows you to display an event (__1 event per widget__). In contrast, this widget shows all the events in one place (__1 calendar per widget__). 

For each calendar, Dashing job fetches the events of it using provided uri, orders events to match starting time and sends the data to the dashboard.

In our company, we use it to track internal events (e.g. meetings and presentations).

### Installation

You'll need [icalendar](https://rubygems.org/gems/icalendar) for handling `ics` data. Go ahead and add `gem 'icalendar'` to your `Gemfile`. Then run `bundle install`.

Download [MomentJS](http://momentjs.com/) and put `moment.min.js` in your `/assets/javascripts` directory. It gets included automatically.

The files `google_calendar.coffee`, `google_calendar.html` and `google_calendar.scss` go in the `/widget/google_calendar` directory.

The `google_calendar.rb` goes in the `/jobs` directory.

Open it and add calendars you want to track. You'll have to give a name and uri for each of them. Notice that uri should return data in `RFC-2445` format (see [icalendar readme](http://rubydoc.info/gems/icalendar/1.4.1/frames) for details). You might also change how often job is called to suit your needs.

Finally, add the following block to your dashingboard.erb file for each calendar:

```html
<li data-row="1" data-col="1" data-sizex="2" data-sizey="1">
  <div data-id="google_calendar_<calendar_name>" data-view="GoogleCalendar" style="background-color:#4183C5;"></div>
  <i class="icon-calendar icon-background"></i>
</li>
```

Replace \<calendar_name\> with the calendar's name.