class AddQuantityAndPriceToOrderItems < ActiveRecord::Migration[6.0]
  def change
    add_column :order_items, :quantity, :integer
    add_column :order_items, :price, :decimal
  end
end
