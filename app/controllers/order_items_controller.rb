class OrderItemsController < ApplicationController
  include CurrentOrder
  before_action :set_order, only: [:create]
  before_action :require_login


  def create
    @order_item = OrderItem.new(order_item_params)
    @product = Product.find(params[:store_id])
    @order_item.product = @product
    @order_item.total_price = @order_item.quantity * @order_item.product.price
    @order_item.order = @order
  end

  def update
  end

  def destroy
  end

  private

  def order_item_params
    params.require(:order_item).permit(:quantity, :product_id, :order_id)

  def require_login
    unless current_user
      redirect_to new_user_session_path
    end
  end
end
