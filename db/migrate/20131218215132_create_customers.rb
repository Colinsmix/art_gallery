class CreateCustomers < ActiveRecord::Migration
  def change
    create_table :customers do |t|
      t.string :name, null: false
      t.string :number, null: false

      t.timestamps
    end
  end
end
