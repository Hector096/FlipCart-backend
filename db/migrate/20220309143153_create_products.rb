class CreateProducts < ActiveRecord::Migration[7.0]
  def change
    create_table :products do |t|
      t.string :name, null: false
      t.text :description
      t.string :img, null:false
      t.decimal :price, null: false
      t.integer :quantity, null: false, default: 1

      t.timestamps
    end
  end
end
