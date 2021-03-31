class Cart < ApplicationRecord
  has_many :order_items, dependent: :destroy
  belongs_to :user

  # Method that checks if the list of items already includes the product getting
  # added; if it does, it bumps the quantity, if it doesn't it builds a new OrderItem
  def add_product(product, quantity)
    current_item = order_items.find_by(product_id: product.id)

    # If current_item doesn't exist, build it
    if current_item.nil?
      current_item = order_items.build(product_id: product.id)
    end

    if current_item.quantity.nil?
      current_item.quantity = quantity
    else
      current_item.quantity += quantity
    end

    return current_item
  end

  def total_price
    order_items.to_a.sum { |item| item.total_price }
  end
end
