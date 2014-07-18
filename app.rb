require 'bundler' #require bundler
Bundler.require #require everything in bundler in gemfile
require_relative './lib/twilio.rb'
require_relative './lib/scrape.rb'
require_relative './lib/check_for_change.rb'


get '/' do
  @change_goals = Goal.new
  @change_goals.change_for_view
  @message = @change_goals.call_message
  @time = @change_goals.call_time
  erb :index #this tells your program to use the html associated with the index.html.erb file in your browser
end 
