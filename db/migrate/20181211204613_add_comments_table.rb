class AddCommentsTable < ActiveRecord::Migration[5.2]
  def change
    create_table :comments do |t|
      t.column :name, :string
      t.column :message, :string
      t.column :link_id, :integer

      t.timestamps
    end
  end
end
