

class Goal

  def initialize
    require 'nokogiri'
    require 'open-uri'
    require 'twilio-ruby'
    require_relative '/Users/julianne/Desktop/development/FINAL_project/scrape.rb'
    Scrape.new #Without Object Orientation: can't find variables in scrape.rb
    @Jozy = @stats[:Jozy_Stat] #With: Error: dynamic constant assignment (SyntaxError)
    @Julian = @stats[:Julian_Stat] #Too Dynamic to name inside class and def
    @Agudelo = @stats[:Agudelo_Stat]
    @Boyd = @stats[:Boyd_Stat]
    @Gedion = @stats[:Gedion_Stat]
    @Yedlin = @stats[:Yedlin_Stat]
    until @Jozy == 3107492
      change
    end
  end

  def message(name)
    require_relative 'twilio.rb'
    Messenger.new('+13476758819', '#{name} scored a goal! GoLaZo!! #USMNT2018')
  end

  def change
    if @stats[:Jozy_Stat] != @Jozy
      message('Jozy Altidore')
      @Jozy = @stats[:Jozy_Stat]
    elsif @stats[:Julian_Stat] != @Julian
      message('Julian Green')
      @Julian = @stats[:Julian_Stat]
    elsif @stats[:Agudelo_Stat] != @Agudelo
      message('Juan Agudelo')
      @Agudelo = @stats[:Agudelo_Stat]
    elsif @stats[:Boyd_Stat] != @Boyd
      message('Terrence Boyd')
      @Boyd = @stats[:Boyd_Stat]
    elsif @stats[:Gedion_Stat] != @Gedion
      message('Gedion Zelalem')
      @Gedion = @stats[:Gedion_Stat]
    elsif @stats[:Yedlin_Stat] != @Yedlin
      message('DeAndre Yedlin')
      @Yedlin = @stats[:Yedlin_Stat]
    else
      puts "No Goals to Report"
    end
    sleep(300)
  end


end

me = Goal.new

