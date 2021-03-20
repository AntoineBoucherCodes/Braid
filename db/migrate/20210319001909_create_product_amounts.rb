class CreateProductAmounts < ActiveRecord::Migration[6.0]
  def change
    create_table :product_amounts do |t|
      t.integer :quantity
      t.references :product, null: false, foreign_key: true
      t.references :cart, null: false, foreign_key: true
      t.timestamps
    end
  end
end
