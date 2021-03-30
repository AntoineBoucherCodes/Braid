class AddOrderToOrderItems < ActiveRecord::Migration[6.0]
  def change
    add_reference :order_items, :order, null: true, foreign_key: true
    change_column :order_items, :cart_id, :integer, null: true
  end
end
