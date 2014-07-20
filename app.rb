require 'bundler' #require bundler
Bundler.require #require everything in bundler in gemfile
require_relative './lib/twilio.rb'
require_relative './lib/scrape.rb'
require_relative './lib/check_for_change.rb'
require_relative './lib/Data.rb'


get '/' do
  @posts = Web.new
  @jozy = @posts.jozy
  @julian =  @posts.julian
  @agudelo =  @posts.agudelo
  @boyd =  @posts.boyd
  @gedion =  @posts.gedion
  @yedlin =  @posts.yedlin
  @dwyer = @posts.dwyer
  @gil =  @posts.gil
  @aron =  @posts.aron
  @nagbe =  @posts.nagbe
  @corona =  @posts.corona
  @bradley =  @posts.bradley
  @trapp =  @posts.trapp
  erb :index #this tells your program to use the html associated with the index.html.erb file in your browser
end 
