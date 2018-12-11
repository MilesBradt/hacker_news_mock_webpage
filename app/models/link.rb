class Link < ActiveRecord::Base
  validates :title, :presence => true
  validates :url, :presence => true
  validates :points, :presence => true
end
