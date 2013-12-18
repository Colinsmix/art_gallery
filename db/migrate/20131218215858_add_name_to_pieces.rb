class AddNameToPieces < ActiveRecord::Migration
  def up
    add_column :pieces, :name, :string, null: false
  end
  def down
    remove_column :pieces, :name
  end
end
