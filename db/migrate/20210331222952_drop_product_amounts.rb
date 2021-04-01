class DropProductAmounts < ActiveRecord::Migration[6.0]
  def change
    drop_table :product_amounts
  end
end
