require 'nokogiri'
require 'open-uri'

#Nokogiri Stuff  
class Scrape

  def initialize
    htmls
    @jozy = Nokogiri::HTML(@jozy_html)
    @julian = Nokogiri::HTML(@julian_html)
    @agudelo = Nokogiri::HTML(@agudelo_html)    
    @boyd = Nokogiri::HTML(@boyd_html)
    @gedion = Nokogiri::HTML(@gedion_html)
    @yedlin = Nokogiri::HTML(@yedlin_html)
    @gil = Nokogiri::HTML(@gil_html)
    @aron = Nokogiri::HTML(@aron_html)
    @nagbe = Nokogiri::HTML(@nagbe_html)
    @corona = Nokogiri::HTML(@corona_html)
    @bradley = Nokogiri::HTML(@bradley_html)
    @trapp = Nokogiri::HTML(@trapp_html)
    @dwyer = Nokogiri::HTML(@dwyer_html)
    @zusi = Nokogiri::HTML(@zusi_html)

    scrape
  end
    #Jozy_Stat: jozy.css(#mw-content-text > table:nth-child(51) > tbody > tr:nth-child(26) > th:nth-child(11))
    #Julian_Stat: julian.css(#mw-content-text > table:nth-child(21) > tbody > tr:nth-child(5) > th:nth-child(11))
    #Agudelo_Stat: agudelo.css(#mw-content-text > table:nth-child(31) > tbody > tr:nth-child(14) > th:nth-child(11))
    #Boyd_Stat: boyd.css(#mw-content-text > table.wikitable > tbody > tr:nth-child(12) > th:nth-child(9))
    #Gedion_Stat: gedion.css(#mw-content-text > table.wikitable > tbody > tr:nth-child(4) > th:nth-child(11))
    #Yedlin_Stat: yedlin.css(#mw-content-text > table.wikitable > tbody > tr:nth-child(8) > th:nth-child(11))

  def htmls
    @jozy_html = open('http://en.wikipedia.org/wiki/Jozy_Altidore')
    @julian_html = open('http://en.wikipedia.org/wiki/Julian_Green')
    @agudelo_html = open('http://en.wikipedia.org/wiki/Juan_Agudelo')
    @boyd_html = open('http://en.wikipedia.org/wiki/Terrence_Boyd')
    @gedion_html = open('http://en.wikipedia.org/wiki/Gedion_Zelalem')
    @yedlin_html = open('http://en.wikipedia.org/wiki/DeAndre_Yedlin')
    @gil_html = open('http://en.wikipedia.org/wiki/Luis_Gil')
    @aron_html = open('http://en.wikipedia.org/wiki/Aron_J%C3%B3hannsson')
    @nagbe_html = open('http://en.wikipedia.org/wiki/Darlington_Nagbe')
    @corona_html = open('http://en.wikipedia.org/wiki/Joe_Corona')
    @bradley_html = open('http://en.wikipedia.org/wiki/Michael_Bradley_(soccer)')
    @trapp_html = open('http://en.wikipedia.org/wiki/Wil_Trapp')
    @dwyer_html = open('http://en.wikipedia.org/wiki/Dom_Dwyer')
    @zusi_html = open('http://en.wikipedia.org/wiki/Graham_Zusi')
  end

  def scrape
    @stats = { #Everybody's career goals
      ##mw-content-text > table:nth-child(23) > tbody > tr:nth-child(8) > th:nth-child(11)
      :Jozy_Stat => @jozy.css('#mw-content-text > table:nth-child(51) > tr:last-child > th:last-child').text,
      :Julian_Stat => @julian.css('#mw-content-text > table:nth-child(23) > tr:last-child > th:nth-child(11)').text,
      :Agudelo_Stat => @agudelo.css('#mw-content-text > table:nth-child(29) > tr:last-child > th:last-child').text,
      :Boyd_Stat => @boyd.css('#mw-content-text > table.wikitable > tr:last-child > th:last-child').text,
      :Gedion_Stat => @gedion.css('#mw-content-text > table.wikitable > tr:last-child > th:last-child').text,
      :Yedlin_Stat => @yedlin.css('#mw-content-text > table.wikitable > tr:last-child > th:last-child').text,
      :Gil_Stat => @gil.css('#mw-content-text > table.wikitable > tr:last-child > th:last-child').text,
      :Aron_Stat => @aron.css('#mw-content-text > table:nth-child(30) > tr:last-child > th:last-child').text,
      :Nagbe_Stat => @nagbe.css('#mw-content-text > table.wikitable > tr:last-child > th:last-child').text,
      :Corona_Stat => @corona.css('#mw-content-text > table:nth-child(27) > tr:last-child > th:last-child').text,
      :Bradley_Stat => @bradley.css('#mw-content-text > table:nth-child(41) > tr:last-child > th:nth-child(13)').text,
      :Trapp_Stat => @trapp.css('#mw-content-text > table.wikitable > tr:last-child > th:last-child').text,
      :Dwyer_Stat => @dwyer.css('#mw-content-text > table.wikitable > tr:last-child > th:last-child').text,
      :Zusi_Stat => @zusi.css('#mw-content-text > table:nth-child(22) > tr:last-child > th:nth-child(16)').text,
    }
    puts @stats
  end

  def call(key)
    @stats[key]
  end

end

usa = Scrape.new
