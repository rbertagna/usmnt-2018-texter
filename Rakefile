require 'nokogiri'
require 'mailgun'
require './lib/scrape.rb'
require './lib/twilio.rb'
require './lib/check_for_change.rb'


task :check_for_goals do
  @change_goals = Goal.new
  @change_goals.change
  @message = @change_goals.call_message
  @time = @change_goals.call_time
end
