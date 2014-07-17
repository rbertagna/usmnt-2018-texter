require 'nokogiri'
require 'open-uri'

#Nokogiri Stuff  
class Scrape

  def initialize

    Jozy_html = open('http://en.wikipedia.org/wiki/Jozy_Altidore')
    jozy = Nokogiri::HTML(Jozy_html)

    Julian_html = open('http://en.wikipedia.org/wiki/Julian_Green')
    julian = Nokogiri::HTML(Julian_html)

    Agudelo_html = open('http://en.wikipedia.org/wiki/Juan_Agudelo')
    agudelo = Nokogiri::HTML(Agudelo_html)

    Boyd_html = open('http://en.wikipedia.org/wiki/Terrence_Boyd')
    boyd = Nokogiri::HTML(Boyd_html)

    Gedion_html = open('http://en.wikipedia.org/wiki/Gedion_Zelalem')
    gedion = Nokogiri::HTML(Gedion_html)

    Yedlin_html = open('http://en.wikipedia.org/wiki/DeAndre_Yedlin')
    yedlin = Nokogiri::HTML(Yedlin_html)
    #Jozy_Stat: jozy.css(#mw-content-text > table:nth-child(51) > tbody > tr:nth-child(26) > th:nth-child(11))
    #Julian_Stat: julian.css(#mw-content-text > table:nth-child(21) > tbody > tr:nth-child(5) > th:nth-child(11))
    #Agudelo_Stat: agudelo.css(#mw-content-text > table:nth-child(31) > tbody > tr:nth-child(14) > th:nth-child(11))
    #Boyd_Stat: boyd.css(#mw-content-text > table.wikitable > tbody > tr:nth-child(12) > th:nth-child(9))
    #Gedion_Stat: gedion.css(#mw-content-text > table.wikitable > tbody > tr:nth-child(4) > th:nth-child(11))
    #Yedlin_Stat: yedlin.css(#mw-content-text > table.wikitable > tbody > tr:nth-child(8) > th:nth-child(11))

  
    @stats = { #Everybody's career goals
      #mw-content-text > table:nth-child(51) > tbody > tr:nth-child(26) > th:nth-child(11)
      :Jozy_Stat => jozy.css('#mw-content-text > table:nth-child(51) > tr:nth-child(26) > th:nth-child(11)').text,
      :Julian_Stat => julian.css('#mw-content-text > table:nth-child(21) > tr:nth-child(5) > th:nth-child(11)').text,
      :Agudelo_Stat => agudelo.css('#mw-content-text > table:nth-child(31) > tr:nth-child(14) > th:nth-child(11)').text,
      :Boyd_Stat => boyd.css('#mw-content-text > table.wikitable > tr:nth-child(12) > th:nth-child(9)').text,
      :Gedion_Stat => gedion.css('#mw-content-text > table.wikitable > tr:nth-child(4) > th:nth-child(11)').text,
      :Yedlin_Stat => yedlin.css('#mw-content-text > table.wikitable > tr:nth-child(8) > th:nth-child(11)').text
    }
  end

end

