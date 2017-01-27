module ApplicationHelper

  def blurbs(name)
    ApplicationHelper.send(name)
  end

  def self.sinatra
    <<-TXT.strip_heredoc
    Sinatra is like a very minimalist version of Rails. It inspired a bunch of spinoff "microframeworks". Since there's less boilerplate, building with Sinatra is a more from-the-ground up. It offers a lot more freedom in structuring code, which can be nice.<br><br>
      Learning Sinatra was a valuable stepping stone to the concepts underlying Rails, and I continue to use it often.
    TXT
  end

  def self.rails
    <<-TXT.strip_heredoc
    Rails is a very full-featured framework for building dynamic web applications. Its 'convention over configuration' approach and fast development speed made it popular among startups, and it is associated with Ruby's rise to popularity.<br><br>
      Learning Rails was one of my initial goals when setting out to learn programming. Since it was my first foray into code it took me about a year to get competent, and in the 2+ years since then I've been steadily improving my skills.
    TXT
  end

  def self.gemmy
    <<-TXT.strip_heredoc
    RubyGems is the Ruby community's way of sharing libraries. For a while I didn't make any gems, but I eventually got around to making a gem generator and since then I've been making them pretty frequently.
    TXT
  end

  def self.eventmachine
    <<-TXT.strip_heredoc
    Async programming is ubiquitous to Javascript, but Ruby code is more frequently synchronous. That being said, Ruby has a very capable Thread library, but it's somewhat low-level. EventMachine simplifies things and is used by libraries such as <a href="https://github.com/faye/faye-websocket-ruby">faye-websocket-ruby</a>
    TXT
  end

  def self.resque
    <<-TXT.strip_heredoc
    Resque is a background-job framework which uses Redis. It has a web interface and ties in well with other Ruby tools such as RSpec.
    TXT
  end

  def self.sidekiq
    <<-TXT.strip_heredoc
    Sidekiq is another background-job framework. It ties in decently with RSpec and has a web interface.
    TXT
  end

  def self.yaml
    <<-TXT.strip_heredoc
    YAML stands for "Yaml ain't another markup language". Which makes sense as a title, because YAML isn't really a markup lanauage. It's for data serializion, in a very similar fashion to JSON but with a slightly more terse syntax. It also supports more native Ruby datatypes than JSON.
    TXT
  end

  def self.sounds_rb
    <<-TXT.strip_heredoc
    I've been messing with electronic music since I was in high school and Garageband came out. My main tools have been a MPC sequencer / sampler and Audacity.<br><br>
    I've also managed to make some programmatic music using Ruby. This sounds project is a multithreaded command line interface that has decent performance. It contains a completely dynamic arpeggiator (given one base mp3 file and a scale, it creates all intermediately mp3 files).
    TXT
  end

  def self.json
    <<-TXT.strip_heredoc
    JSON is a data serialization format that is probably the most common on the web these days.
    TXT
  end

  def self.ajax
    <<-TXT.strip_heredoc
    AJAX is the reason that websites stopped reloading every time a link got clicked. It's been surpassed by Websockets in terms of functionality, but it still extremely common.
    TXT
  end

  def self.websockets
    <<-TXT.strip_heredoc
    "Realtime" websites are possible with AJAX, but it's not true 2-way communication like websockets are. It's similar to push notifications on a cell phone - the app can send it whenever they want. I find it a very exciting technology and look forward to its continual development.
    TXT
  end

  def self.oauth
    <<-TXT.strip_heredoc
    OAuth is a protocol so users of one site can log in "through" another site. For example, on StackOverflow it's possible to log in through Google.
    TXT
  end

  def self.push_notifications
    <<-TXT.strip_heredoc
    Push notifications are how mobile apps send realtime updates to users' devices. These can actually be send by servers as well.
    TXT
  end

  def self.chatbots
    <<-TXT.strip_heredoc
    Chatbots have been around a while, but there's some interesting projects coming out in the field of "chattable APIs". For example, Slack bots for the workplace, or shopping bots.
    TXT
  end

  def self.postgres
    <<-TXT.strip_heredoc
    Postres is known for being the 'most advanced' open-source database. Although for simple use most differences between vendors can be abstracted away by an ORM, I've used some of Postgres' special features such as JSON queries and location calculations.
    TXT
  end

  def self.mysql
    <<-TXT.strip_heredoc
    MySQL bills itself as the "most popular" open-source database. I've mainly used it through Rails' ORM so it's mostly the same to me.
    TXT
  end

  def self.sqlite
    <<-TXT.strip_heredoc
    SQLite is a very lightweight SQL server that can be used in-memory or with a database file. It's used as Andoid's database. for example.
    TXT
  end

  def self.redis
    <<-TXT.strip_heredoc
    Redis is an in-memory key-val storage system that's much faster than SQL. The persistence isn't foolproof without a backup - all data will be lost if the host OS is shutdown, for example. But lots of data can be suitable maintained this way. Caching with Redis can go a long way towards improving the performance of an application which has a lot of data. The Resque 'process queueing' system is built on top of this.
    TXT
  end

  def self.firebase
    <<-TXT.strip_heredoc
    Firebase is a cloud "backend as a service" that's now run by Google. It supports oAuth, so it could potentially used as part of a chrome extension or bookmarklet.
    TXT
  end

  def self.mongodb
    <<-TXT.strip_heredoc
    MongoDB is a key-val storage system used by Meteor.js. Meteor has built a very strong toolset around Mongo, including an ORM, identical browser/server APIs, and integrated websocket-based state synchronization.
    TXT
  end

  def self.pstore
    <<-TXT.strip_heredoc
    PStore is a filesystem-based persistence system built in to ruby. It serializes data into formats like yaml and json. It's really quick and easy, even if not necesarrily the best-performing.
    TXT
  end

  def self.tmsu
    <<-TXT.strip_heredoc
    TMSU is a Unix tool for filesystem tagging. It's labelled a "non-hierarchical filesystem manager".
    TXT
  end

  def self.s3
    <<-TXT.strip_heredoc
    AWS S3 is a storage service. They have a comprehensive API, cheap rates, and integration with CDNs.
    TXT
  end

  def self.elastic_beanstalk
    <<-TXT.strip_heredoc
    Elastic Beanstalk is AWS's "autoscaling" app hosting. It is a wrapper over EC2, launching instances as needed with a load balancer.
    TXT
  end

  def self.ec2
    <<-TXT.strip_heredoc
    EC2 is AWS' "Elastic Cloud Compute" service which is basically a standard server. Although the AWS admin tools are not always the most intuitive, the micro size is free and it's easy to monitor performance.
    TXT
  end

  def self.s3_hosting
    <<-TXT.strip_heredoc
    AWS S3 can also be used for static hosting of websites. This can be manipulated through their API.
    TXT
  end

  def self.github_pages
    <<-TXT.strip_heredoc
    Github Pages is a free static hosting service that integrates with the Git platform.
    TXT
  end

  def self.heroku
    <<-TXT.strip_heredoc
    Heroku is a very easy, free way to host Ruby apps. They actually end up hosting the app on AWS, but their interface is much friendlier. One downside is that the filesystem on Heroku instances is read-only. Heroku is sponsoring Matz, the creator of Ruby.
    TXT
  end

  def self.linode
    <<-TXT.strip_heredoc
    Linode is a more from-the-ground up hosting service that I spent some time on learning to 'self host', i.e. things like iptables and Nginx.
    TXT
  end

  def self.linux
    <<-TXT.strip_heredoc
    Linux is the "free OS" that's under the hood a lot like OSX because they're both Unix-based.
    TXT
  end

  def self.ubuntu
    <<-TXT.strip_heredoc
    Ubuntu is the most popular version of Linux and is very user-friendly. It's not much different than Windows or Mac for general usage.
    TXT
  end

  def self.bash
    <<-TXT.strip_heredoc
    Bash is how I interact with the command line.
    TXT
  end

  def self.fish
    <<-TXT.strip_heredoc
    Fish is a shell like bash, but with some bonus features such as colors and autocompletion.
    TXT
  end

  def self.tmux
    <<-TXT.strip_heredoc
    Tmux is a way to split a single terminal pane into a few sessions. It also allows saving the sessions state to be re-attached later, so it's reallty useful when working with hosted servers. I've written a Ruby wrapper over Tmux.
    TXT
  end

  def self.screen
    <<-TXT.strip_heredoc
    Screen is similar to Tmux but without the split-pane feature. When hosting an application on a server, screen can be used to keep it running in the background.
    TXT
  end

  def self.git
    <<-TXT.strip_heredoc
    Git is a version control software. It's a way to collaborate and backup work.
    TXT
  end

  def self.datamapper
    <<-TXT.strip_heredoc
    Datamapper is an Object Relational Mapper that is lightweight compared to Rails' ActiveRecord, but has a similar syntax. It removes the necessity to write migrations.
    TXT
  end

  def self.active_record
    <<-TXT.strip_heredoc
    ActiveRecord is Rails' interface to the database, and in most cases removes the need to write any SQL directly. It has a 'convention over configuration' approach and a handy query-chaining syntax.
    TXT
  end

  def self.sequelize
    <<-TXT.strip_heredoc
    Sequelize is a Javacript ORM for SQL, but has a totally asynchronous, promise-based API.
    TXT
  end

  def self.redis_objects
    <<-TXT.strip_heredoc
    redis-objects is a gem that ties Rails' ActiveRecord with Redis, so that some attributes can be persisted to SQL and some to the in-memory cache.
    TXT
  end

  def self.tmsu_ruby
    <<-TXT.strip_heredoc
    TmsuRuby is an ORM I wrote that mirrors parts of ActiveRecord's syntax, but doesn't use a conventional database. Instead, it uses the filesystem in conglomeration with TMSU's file tagging.
    TXT
  end

  def self.selenium
    <<-TXT.strip_heredoc
    Selenium is a way to automate the browser. It has bindings for many programming languages.
    TXT
  end

  def self.capybara
    <<-TXT.strip_heredoc
    Capybara is a Ruby wrapper over Selenium to provide some helper methods.
    TXT
  end

  def self.mechanize
    <<-TXT.strip_heredoc
    Mechanize is a tool for browser automation that doesn't actually run a browser. So it's incapable of doing anything dependent on Javascript. But for many cases, it works just fine. I used it when testing the JSON API I was building at Timeset.
    TXT
  end

  def self.rspec
    <<-TXT.strip_heredoc
    RSpec is a library for writing automated tests in Ruby.
    TXT
  end

  def self.cucumber
    <<-TXT.strip_heredoc
    Cucumber is a Ruby test library which allows the programmer to write test cases using natural English language.
    TXT
  end

  def self.jasmine
    <<-TXT.strip_heredoc
    Jasmine is Javascript's corrolary to Ruby's RSpec testing library.
    TXT
  end

  def self.headless
    <<-TXT.strip_heredoc
    Headless is a Ruby project that enables running Selenium in a non-graphical environment. Normally, Selenium opens an actual browser window on the host machine, but this isn't possible on hosted servers. Headless enables this capability and furthermore can take screenshots and videos.
    TXT
  end

  def self.slim
    <<-TXT.strip_heredoc
    Slim is a Ruby library which provides a very terse syntax for writing HTML with interpolated code. It also has built-in sass, cofffescript, and markdown preprocessors.
    TXT
  end

  def self.sass
    <<-TXT.strip_heredoc
    Sass is a slightly nicer syntax for CSS with some more programmic control than is available out-the-box (CSS isn't really a programming language).
    TXT
  end

  def self.bootstrap
    <<-TXT.strip_heredoc
    Bootstrap is a collection of components for websites, built by Twitter. It's very frequently used to add baseline style and to achieve responsivity (where the page is usable on smaller screens).
    TXT
  end

  def self.coffeescript
    <<-TXT.strip_heredoc
    Coffeescript is a vastly superior syntax for Javascript and even surpasses Ruby's brevity in some ways. One downside is that not all ES6 features are supported, and one needs to go through hoops to write apps using ES6-centric frameworks like React.
    TXT
  end

  def self.backbone
    <<-TXT.strip_heredoc
    Backbone is a client-side MVC that we learned to integrate with Rails at App Academy.
    TXT
  end

  def self.masonry
    <<-TXT.strip_heredoc
    Masonry is a tiling layout library which can be used for responsive sites. The Pinterest feed is a good example of this sort of layout.
    TXT
  end

  def self.html5_audio
    <<-TXT.strip_heredoc
    HTML5 audio can be used to play and download files. It also supports WebRTC for recording and playing streams.
    TXT
  end

  def self.html5_video
    <<-TXT.strip_heredoc
    HTML5 video can to play and download files. It also supports WebRTC for recording and playing streams.
    TXT
  end

  def self.google_maps
    <<-TXT.strip_heredoc
    Google Maps is an easy-plug in that is very customizable.
    TXT
  end

  def self.speech
    <<-TXT.strip_heredoc
    There are a few Unix speech synthesis programs. I've found ESpeak to be the most capable. On the browser, speech recognition and synthesis are both built-in. This API is rather new, so it will probably become more ubiquitous as time goes on.
    TXT
  end

  def self.express
    <<-TXT.strip_heredoc
    Express.js is a pretty low-level web framework for Node. It's a lot like Sinatra in simplicity, and is good for building from-the-ground-up apps.
    TXT
  end

  def self.meteor
    <<-TXT.strip_heredoc
    Meteor is a very full-featured Javascript framework. For a while it had a self-contained package management system, though it now supports NPM. It's strong suite is automatic syncing between server and browser. Websocket code does not have to be explicitly written. Meteor packages tend to have very concise APIs since the framework does so much behind the scenes.
    TXT
  end

  def self.react
    <<-TXT.strip_heredoc
    React.js is a server-side rendering framework built by Facebook. It's grown to very popular in recent years. I've learned some of the basics. A strong feature is the ability to write HTML templates completely inline using the jsx preprocessor.
    TXT
  end

  def self.babel
    <<-TXT.strip_heredoc
    Babel is a Node library for translating between various Javascript derivatives. A common use case is to convert Coffeescript or ES6 to versions of Javascript that are more universally supported in the browser.
    TXT
  end

  def self.bower
    <<-TXT.strip_heredoc
    Bower is a Node tool providing a client-side package manager. It combines dependencies into a bundle suitable for production distribution.
    TXT
  end

  def self.browserify
    <<-TXT.strip_heredoc
    Browserify is similar to Bower in that it provides client-side package management. But whereas Bower uses its own repository of client-compatible libraries, browserify attempts to convert Node libaries to client-compatible variants.
    TXT
  end

  def self.phoenix
    <<-TXT.strip_heredoc
    Phoenix might be called the "rails of elixir" although it's better in some ways.
    The bar to entry in elixir is a little higher, but it's better performing, especially
    for multi-process or async stuff.
    Some goodies include a live-reloading server and npm integration. 
    TXT
  end

  def self.phoenix_presence
    <<-TXT.strip_heredoc
    Phoenix comes with websocket support, although without the automatic two-way binding e.g. Metor.
    Presence is a component to the websocket stack, which enables publishing a realtime list of online users.
    TXT
  end

  def self.phoenix_heroku
    <<-TXT.strip_heredoc
    Phoenix is quite easy to deploy to Heroku if you specify the buildpack.
    TXT
  end



end
