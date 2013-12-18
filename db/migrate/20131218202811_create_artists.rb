class CreateArtists < ActiveRecord::Migration
  def change
    create_table :artists do |t|
      t.string :name, null: false
      t.string :number, null: false
      t.string :birth_place, null: false
      t.integer :style_id

      t.timestamps
    end
  end
end
