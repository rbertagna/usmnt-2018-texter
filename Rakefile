require 'nokogiri'
require 'mailgun'
require './lib/scrape.rb'
require './lib/twilio.rb'
require './lib/check_for_change.rb'

@change_goals = Goal.new 

task :check_for_goals do
  until Time.now == Time.new(2018, 06, 21, 11, 25, 12)
    @change_goals.change
    @message = @change_goals.call_message
    @time = @change_goals.call_time
    puts @change_goals
    sleep(120)
  end
end
