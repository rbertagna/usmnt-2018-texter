require 'nokogiri'
require 'open-uri'
require 'twilio-ruby'
require 'time'

class Goal

  def initialize    
    require_relative '/Users/julianne/Desktop/development/FINAL_project/scrape.rb'
    @goals = Scrape.new #Without Object Orientation: can't find variables in scrape.rb
    @Jozy = @goals.call(:Jozy_Stat)#With: Error: dynamic constant assignment (SyntaxError)
    @Julian = @goals.call(:Julian_Stat) #Too Dynamic to name inside class and def
    @Agudelo = @goals.call(:Agudelo_Stat)
    @Boyd = @goals.call(:Boyd_Stat)
    @Gedion = @goals.call(:Gedion_Stat)
    @Yedlin = @goals.call(:Yedlin_Stat)
    until @Jozy == 'pizza'
      @goals = Scrape.new
      change
    end
  end

  def message(name)
    require_relative 'twilio.rb'
    Messenger.new('+13476758819', '+13477845676', '+13108900142', '+13476758775', name + ' scored a goal! GoLaZo!! #USMNT2018')
  end

  def change
    if @goals.call(:Jozy_Stat) != @Jozy
      message('Jozy Altidore')
      @Jozy = @goals.call(:Jozy_Stat)
    elsif @goals.call(:Julian_Stat) != @Julian
      message('Julian Green')
      @Julian = @goals.call(:Julian_Stat)
    elsif @goals.call(:Agudelo_Stat) != @Agudelo
      message('Juan Agudelo')
      @Agudelo = @goals.call(:Agudelo_Stat)
    elsif @goals.call(:Boyd_Stat) != @Boyd
      message('Terrence Boyd')
      @Boyd = @goals.call(:Boyd_Stat)
    elsif @goals.call(:Gedion_Stat) != @Gedion
      message('Gedion Zelalem')
      @Gedion = @goals.call(:Gedion_Stat)
    elsif @goals.call(:Yedlin_Stat) != @Yedlin
      message('DeAndre Yedlin')
      @Yedlin = @goals.call(:Yedlin_Stat)
    else
      puts "No Goals to Report"
    end
    sleep(30)
  end


end

me = Goal.new

