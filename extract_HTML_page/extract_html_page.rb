#encoding: UTF-8
require 'net/http'
class Page
  def initialize
  end

  def read_page
    uri = URI('http://www.baidu.com')
    @page = Net::HTTP.get(uri)
  end

  def search_for_links
    regex = /<a\shref="(.+?)">(.+?)<\/a>/m #/<a.?href="(.+?)".+?>\s?(.+?)\s?<\/a>/
    @links = @page.scan(regex)
  end

  def save_to_file
    1.upto(@links.length) do |i|
      puts i.to_s + ":" + @links[i-1][0] + ":" + @links[i-1][1]
    end
  end
end

page = Page.new
page.read_page
page.search_for_links
page.save_to_file


