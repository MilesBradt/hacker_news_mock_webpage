class Link < ActiveRecord::Base
  has_many :comments
  validates :title, :presence => true
  validates :url, :presence => true
  validates :points, :presence => true
end
