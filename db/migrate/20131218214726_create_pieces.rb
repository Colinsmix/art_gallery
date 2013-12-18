class CreatePieces < ActiveRecord::Migration
  def change
    create_table :pieces do |t|
      t.integer :artist_id, null: false
      t.date :creation_date
      t.date :avail_date
      t.string :type
      t.float :sold_at
      t.float :value
      t.integer :sale_id

      t.timestamps
    end
  end
end
