source 'https://rubygems.org'


# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '4.2.1'

# Use sqlite3 as the database for Active Record
# and pg for production on heroku
gem 'sqlite3', group: :development
gem 'pg', group: :production
gem 'rails_12factor', group: :production

# custom
gem 'colored'

# Use SCSS for stylesheets
gem 'sass-rails', '~> 5.0'
# Use Uglifier as compressor for JavaScript assets
gem 'uglifier', '>= 1.3.0'
# Use CoffeeScript for .coffee assets and views
gem 'coffee-rails', '~> 4.1.0'
# See https://github.com/rails/execjs#readme for more supported runtimes
# gem 'therubyracer', platforms: :ruby

# Use jquery as the JavaScript library
gem 'jquery-rails'

# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 2.0'
# Turbolinks makes following links in your web application faster. Read more: https://github.com/rails/turbolinks
# bundle exec rake doc:rails generates the API under doc/api.
gem 'sdoc', '~> 0.4.0', group: :doc

# Use ActiveModel has_secure_password
# gem 'bcrypt', '~> 3.1.7'

# Use Unicorn as the app server
# gem 'unicorn'

# Use Capistrano for deployment
# gem 'capistrano-rails', group: :development

group :development, :test do
  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem 'byebug'

  # Access an IRB console on exception pages or by using <%= console %> in views
  gem 'web-console', '~> 2.0'

  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  gem 'spring'
end

gem "subprocess"
gem "open4"

# ripl, dependencies, and plugins
  gem "rb-readline" # dependency
  gem "ripl" # use a REPL in a CLI
  gem "ripl-multi_line"
  gem "ripl-auto_indent"
  gem "ripl-shell_commands"
  gem "ripl-irb" # ignores some unneeded errors caused by IRB
  gem "ripl-play" # playback / record ripl input
  gem "ripl-color_streams" # colored output

# Terminal coloring
  gem "colored"
  gem "awesome_print"

# Show method sources
  gem "method_source"

# For bootstrap theme (telestrap, which is not gemified)
# COMMENTED OUT BECAUASE IT BREAKS THINGS
# it doesn't allow *= require in application.css
  # gem 'bootstrap-sass', '~> 3.3.6'


gem "markdown-rails" 
