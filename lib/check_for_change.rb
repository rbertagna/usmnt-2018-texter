require 'nokogiri'
require 'open-uri'
require 'twilio-ruby'
require_relative 'scrape.rb'
require_relative 'twilio.rb'

class Goal

  def initialize
    @message = 'No Goals have been scored.'
    @time = Time.now
    @goals = Scrape.new #Without Object Orientation: can't find variables in scrape.rb
    @Jozy = @goals.call(:Jozy_Stat)#With: Error: dynamic constant assignment (SyntaxError)
    @Julian = @goals.call(:Julian_Stat) #Too Dynamic to name inside class and def
    @Agudelo = @goals.call(:Agudelo_Stat)
    @Boyd = @goals.call(:Boyd_Stat)
    @Gedion = @goals.call(:Gedion_Stat)
    @Yedlin = @goals.call(:Yedlin_Stat)
    @Gil = @goals.call(:Gil_Stat)
    @Aron = @goals.call(:Aron_Stat)
    @Nagbe = @goals.call(:Nagbe_Stat)
    @Corona = @goals.call(:Corona_Stat)
    @Bradley = @goals.call(:Bradley_Stat)
    @Trapp = @goals.call(:Trapp_Stat)    
  end

  def message(name)
    @message = name + ' scored a goal! GoLaZo!! #USMNT2018'
    Messenger.new('+13476758819', @message)
    puts @message
    @time = Time.now
    puts Time.now
  end

  def call_message
    @message
  end

  def call_time
    @time
  end

   def change_for_view
    @goals = Scrape.new
    # until false
      if @goals.call(:Jozy_Stat) != @Jozy
        @message = "Jozy Altidore with the GOlAzO!!"
        @time = Time.now
        @Jozy = @goals.call(:Jozy_Stat)
      elsif @goals.call(:Julian_Stat) != @Julian
        @message = "Julian Green with the GOlAzO!!"
        @time = Time.now
        @Julian = @goals.call(:Julian_Stat)
      elsif @goals.call(:Agudelo_Stat) != @Agudelo
        @message = "Juan Agudelo with the GOlAzO!!"
        @time = Time.now
        @Agudelo = @goals.call(:Agudelo_Stat)
      elsif @goals.call(:Boyd_Stat) != @Boyd
        @message = "Terrence Boyd with the GOlAzO!!"
        @time = Time.now
        @Boyd = @goals.call(:Boyd_Stat)
      elsif @goals.call(:Gedion_Stat) != @Gedion
        @message = "Gedion Zelalem with the GOlAzO!!"
        @time = Time.now
        @Gedion = @goals.call(:Gedion_Stat)
      elsif @goals.call(:Yedlin_Stat) != @Yedlin
        @message = "DeAndre Yedlin with the GOlAzO!!"
        @time = Time.now
        @Yedlin = @goals.call(:Yedlin_Stat)
      elsif @goals.call(:Gil_Stat) != @Gil
        @message = "Luis Gil with the GOlAzO!!"
        @time = Time.now
        @Gil = @goals.call(:Gil_Stat)
      elsif @goals.call(:Aron_Stat) != @Aron
        @message = "Aron Johannsson with the GOlAzO!!"
        @time = Time.now
        @Aron = @goals.call(:Aron_Stat)
      elsif @goals.call(:Nagbe_Stat) != @Nagbe
        @message = "Darlington Nagbe with the GOlAzO!!"
        @time = Time.now
        @Nagbe = @goals.call(:Nagbe_Stat)
      elsif @goals.call(:Corona_Stat) != @Corona
        @message = "Joe Corona with the GOlAzO!!"
        @time = Time.now
        @Corona = @goals.call(:Corona_Stat)
      elsif @goals.call(:Bradley_Stat) != @Bradley
        @message = "Michael Bradley with the GOlAzO!!"
        @time = Time.now
        @Bradley = @goals.call(:Bradley_Stat)
      elsif @goals.call(:Trapp_Stat) != @Trapp
        @message = "Wil Trapp with the GOlAzO!!"
        @time = Time.now
        @Trapp = @goals.call(:Trapp_Stat)
      else
        puts "No Goals to Report"
      end
      # sleep(300)
      # change
    # end
  end

  def change
    @goals = Scrape.new
    # until false
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
      elsif @goals.call(:Gil_Stat) != @Gil
        message('Luis Gil')
        @Gil = @goals.call(:Gil_Stat)
      elsif @goals.call(:Aron_Stat) != @Aron
        message ('Aron Johannsson')
        @Aron = @goals.call(:Aron_Stat)
      elsif @goals.call(:Nagbe_Stat) != @Nagbe
        message('Darlington Nagbe')
        @Nagbe = @goals.call(:Nagbe_Stat)
      elsif @goals.call(:Corona_Stat) != @Corona
        message('Joe Corona')
        @Corona = @goals.call(:Corona_Stat)
      elsif @goals.call(:Bradley_Stat) != @Bradley
        message('Michael Bradley')
        @Bradley = @goals.call(:Bradley_Stat)
      elsif @goals.call(:Trapp_Stat) != @Trapp
        message('Wil Trapp')
        @Trapp = @goals.call(:Trapp_Stat)
      else
        puts "No Goals to Report"
      end
      # sleep(300)
      # change
    # end
  end


end

me = Goal.new

