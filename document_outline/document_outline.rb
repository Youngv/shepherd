require 'nokogiri'
require 'open-uri'
class Outline
  def initialize
    @h_elements = []
  end

  def read_page(url)
    page = Nokogiri::HTML(open(url))
    page.xpath('//h1|//h2|//h3|//h4|//h5|//h6').each do |link|
      puts link
    end
    puts @h_elements
  end
end
outline = Outline.new
outline.read_page("./NodeSet.html")