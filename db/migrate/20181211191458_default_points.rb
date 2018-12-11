class DefaultPoints < ActiveRecord::Migration[5.2]
  def change
    change_column :links, :points, :integer, default: 0
  end
end
