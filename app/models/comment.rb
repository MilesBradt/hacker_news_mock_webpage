class Comment < ActiveRecord::Base
  belongs_to(:link)
  validates :name, :presence => true
  validates :message, :presence => true
end
