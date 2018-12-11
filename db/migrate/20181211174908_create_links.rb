class CreateLinks < ActiveRecord::Migration[5.2]
  def change
    create_table :links do |t|
      t.column :title, :string
      t.column :url, :string
      t.column :points, :integer

      t.timestamps
    end
  end
end
