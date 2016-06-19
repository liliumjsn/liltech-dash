<h2>Description</h2>

Weatheroutlook <a href="http://shopify.github.io/dashing/">Dashing</a> Widget displays a 5-days weather outlook from <a href="http://developer.yahoo.com/weather/">Yahoo! Weather</a> using <a href="http://adamwhitcroft.com/climacons/font/">Climacons Font</a>.

<h2>Preview</h2>

<a href="http://dashboard-project.herokuapp.com/weatheroutlook_widget.png" target="_blank"><img src="http://dashboard-project.herokuapp.com/weatheroutlook_widget.png"></a>

<h2>Dependencies</h2>

<a href="http://rubygems.org/gems/json">json</a>

Add the gem to your dashing gemfile:

<pre><code>gem 'json'</code></pre>

and run <code>bundle install</code>.

<h2>Usage</h2>

First, copy <code>weatheroutlook.coffee</code>, <code>weatheroutlook.html</code>, and <code>weatheroutlook.sass</code> into the <code>/widgets/weatheroutlook</code> directory. Put the <code>weatheroutlook.rb</code> file in the <code>/jobs</code> folder, the 4 font files (.EOT, .WOFF, .SVG & .TTF) in the <code>/assets/fonts</code> directory and the <code>climacons-font.css</code> in the <code>/assets/stylesheets</code> directory.

To use the widget, put the following codes in the <code>/dashboards</code> directory's <code>.erb</code> file:

<pre><code>&lt;li data-row="1" data-col="1" data-sizex="4" data-sizey="1"&gt;
  &lt;div data-id="weatheroutlook" data-view="Weatheroutlook"&gt;&lt;/div&gt;
&lt;/li&gt;</code></pre>

<h2>Settings</h2>

Change to your desired location by editing the WOEID (Where On Earth ID) in the jobs file. Lookup your WOEID <a href="http://woeid.rosselliot.co.nz">here</a> 

<pre><code>woeid  = 2151330   # beijing</code></pre>

You are also able to change the metrics unit for your widget by editing the format in the jobs file. (
Yahoo! Weather API supports both Fahrenheit (f) and Celsius (c).  Change the temperature unit by editing the format variable.

<pre><code>format = "f"</dcode></pre>



