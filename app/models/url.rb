class Url < ApplicationRecord
  validates :source, presence: true
  
  has_many :url_contents
end
