class UrlCreationService
  attr_accessor :url_parser
  def initialize(url_parser)
    self.url_parser = url_parser
  end

  def create
    ActiveRecord::Base.transaction do
      url_contents = url_parser.parse_content
      url = url_parser.url 
      url_contents.each do |urlc|
        url.url_contents.push(urlc) if url.url_contents.find_by_content_and_content_type(urlc.content, urlc.content_type).nil?
       end
       url.save
    end
  end
end
