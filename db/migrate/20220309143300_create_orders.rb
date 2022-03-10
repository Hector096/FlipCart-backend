class CreateOrders < ActiveRecord::Migration[7.0]
  def change
    create_table :orders do |t|
      t.references :product, null: false, foreign_key: { to_table: :products }
      t.integer :quantity, null: false, default: 1
      t.boolean :status , default: false

      t.timestamps
    end
  end
end
