class CreatePieceCollections < ActiveRecord::Migration
  def change
    create_table :piece_collections do |t|
      t.integer :piece_id, null: false
      t.integer :collection_id, null: false

      t.timestamps
    end
  end
end
