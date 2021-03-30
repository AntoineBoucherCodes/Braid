class Cart < ApplicationRecord
  has_many :order_items, dependent: :destroy
  belongs_to :user

  # Method that checks if the list of items already includes the product getting 
  # added; if it does, it bumps the quantity, if it doesn't it builds a new OrderItem
  def add_product(product)
    current_item = order_items.find_by(product_id: product.id)
    if current_item
      current_item.quantity += 1
    else
      current_item = order_items.build(product_id: product.id)
    end
    current_item
  end
end
