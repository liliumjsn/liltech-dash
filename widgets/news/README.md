##Description
Simple Dashing widget (and associated job) to display RSS feeds.  Based on toddq's [News](https://gist.github.com/toddq/5422482) widget. Due to comments about the widget not working for many sites I updated the widget to use Ruby's RSS library. It works quite well now.

##Screenshot
<img src="http://i.imgur.com/2OQtJww.png" />

##Dependencies
[nokogiri](http://nokogiri.org/)

[htmlentities](http://htmlentities.rubyforge.org/)

Add it to dashing's gemfile:

    gem 'nokogiri'
    gem 'htmlentities'
    
and run `bundle install`.

##Usage
To use this widget, copy news.html, news.coffee, and news.scss into the /widgets/news directory. Put the news.rb file in your /jobs folder.

To include the widget in a dashboard, add the following snippet to the dashboard layout file:

    <li data-row="1" data-col="1" data-sizex="1" data-sizey="1">
      <div data-id="seattle-times" data-view="News" data-title="Seattle Times" data-interval="30"></div>
    </li>

At the top of the news.rb job file, add any rss feed urls you want fetched to the hash, and the widget id to send data to.  In the dashboard layout file, the optional `data-interval` binding can be used to specify how frequently to rotate the news items.