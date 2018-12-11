class Comment < ActiveRecord::Base
  belongs_to(:link)
  validates :name, :presence => true
  validates :message, :presence => true
  validates :link_id, :presence => true
end
