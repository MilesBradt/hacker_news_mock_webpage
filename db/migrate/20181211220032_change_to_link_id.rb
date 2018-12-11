class ChangeToLinkId < ActiveRecord::Migration[5.2]
  def change
    remove_column :comments, :link_id
    add_column :comments, :link_id, :integer
  end
end
