require 'nokogiri'
require 'open-uri'
require_relative 'scrape.rb'

class Web

  def initialize
    @jozy = 75
    @julian = 15
    @agudelo = 22
    @boyd = 72
    @gedion = 0
    @yedlin = 4
    @dwyer = 37
    @gil = 12
    @aron = 71
    @nagbe = 26
    @corona = 10
    @bradley = 35
    @trapp = 0
    @goals = Scrape.new
  end
  def jozy
    @jozy_diff = @goals.call(:Jozy_Stat).to_i - @jozy
    @jozy_diff
  end
  def julian
    @julian_diff = @goals.call(:Julian_Stat).to_i - @julian
    @julian_diff
  end
  def agudelo
    @agudelo_diff = @goals.call(:Agudelo_Stat).to_i - @agudelo
    @agudelo_diff
  end
  def boyd
    @boyd_diff = @goals.call(:Boyd_Stat).to_i - @boyd
    @boyd_diff
  end
  def gedion
    @gedion_diff = @goals.call(:Gedion_Stat).to_i - @gedion
    @gedion_diff
  end
  def yedlin
    @yedlin_diff = @goals.call(:Yedlin_Stat).to_i - @yedlin
    @yedlin_diff
  end
  def dwyer
    @dwyer_diff = @goals.call(:Dwyer_Stat).to_i - @dwyer
    @dwyer_diff
  end
  def gil
    @gil_diff = @goals.call(:Gil_Stat).to_i - @gil
    @gil_diff
  end
  def aron
    @aron_diff = @goals.call(:Aron_Stat).to_i - @aron
    @aron_diff
  end
  def nagbe
    @nagbe_diff = @goals.call(:Nagbe_Stat).to_i - @nagbe
    @nagbe_diff
  end
  def corona
    @corona_diff = @goals.call(:Corona_Stat).to_i - @corona
    @corona_diff
  end
  def bradley
    @bradley_diff = @goals.call(:Bradley_Stat).to_i - @bradley
    @bradley_diff
  end
  def trapp
    @trapp_diff = @goals.call(:Trapp_Stat).to_i - @trapp
    @trapp_diff
  end

end

cmon = Web.new
puts cmon.corona
