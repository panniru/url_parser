class UrlContent < ApplicationRecord
 # validates :content, presence: true
 # validates :content_type, presence: true,inclusion: { in: %w(a, h1, h2), message: "%{value} is not a valid type" }
  belongs_to :url

  def url_source
    self.url.source
  end
  
  def as_json(options={})
    super(:methods => [:url_source])
  end
end
