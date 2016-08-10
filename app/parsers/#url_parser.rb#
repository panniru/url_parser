### This class responsible for parsing the url content
### using nokogiri and prepares the url and it's respectred
### children objects

require 'nokogiri'
require 'open-uri'
class UrlParser
  attr_accessor :url
  def initialize(url)
    self.url = url;
  end

  ## Parses the url content with and
  ## generates UrlContent objects and returns
  def parse_content
    doc = Nokogiri::HTML(open(url.source))
    doc.css('a', 'h1', 'h2', 'h3').map do |link|
      UrlContent.new do |urlc|
        content = link.content.strip.force_encoding("utf-8")
        if link.node_name == 'a'
          content = link.get_attribute("href")
          if not (content.present? and (content.starts_with?("http") or content.starts_with?("www")))
            content = url.source+content.to_s
          end
        end
        urlc.content = content
        urlc.content_type = link.node_name
        urlc.url = self.url
      end
    end
  end

end
