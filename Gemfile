source 'http://rubygems.org'

gem 'rails', '3.1.3'
gem 'thin'

# Bundle edge Rails instead:
#gem 'rails',     :git => 'git://github.com/rails/rails.git'
gem 'gravatar_image_tag'#, '1.0.0.pre2'
gem 'will_paginate', "~> 3.0.2" #, '3.0.pre2'
gem 'jquery-rails'
gem 'ruby-pg'
gem 'lunchy'

# Gems used only for assets and not required
# in production environments by default.
# removed the line below per Ginny Henry.  Heruko sporatically rejects or accepts apps with gems listed under assets (as of 03/11/12)
#group :assets do
  gem 'sass-rails',   '~> 3.1.5'
  gem 'coffee-rails', '~> 3.1.1'
  gem 'uglifier', '>= 1.0.3'
#end



group :development do
  #gem 'mysql2'
  gem 'rspec-rails', '>= 2.6.1'
  gem 'annotate', '2.4.1.beta1' #'>= 2.4.0' 
  gem 'faker'#, '0.3.1'
end

group :test do
  #gem 'mysql2'
  gem 'rspec-rails', '>= 2.6.1'
  gem 'webrat', '>= 0.7.1'
  gem 'autotest', '>= 4.4.6'
  gem 'autotest-rails-pure', '>= 4.1.2'
  gem 'autotest-fsevent', '>= 0.2.4'
  gem 'autotest-growl', '>= 0.2.16'
  gem 'factory_girl_rails'  
end


group :production do
 # gem 'pg' #Heroku digs postgress, not MySql, so here I added Matz's postrgres gem
  gem 'heroku'

end

# To use ActiveModel has_secure_password
# gem 'bcrypt-ruby', '~> 3.0.0'

# Use unicorn as the web server
# gem 'unicorn'

# Deploy with Capistrano
# gem 'capistrano'

# To use debugger
# gem 'ruby-debug19', :require => 'ruby-debug'

