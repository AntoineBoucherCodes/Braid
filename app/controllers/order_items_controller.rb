class OrderItemsController < ApplicationController
  include CurrentCart
  before_action :set_cart, only: [:create]
  before_action :set_order_item, only: [:show, :edit, :update, :destroy]

  def create
    product = Product.find(params[:product_id])
    @order_item = @cart.order_items.build(product: product)

    respond_to do |format|
      if @order_item.save
        format.html { redirect_to @order_item.cart,
          notice: 'Order item was successfully created.' }
        format.json { render :show,
          status: :created, location: @order_item }
      else
        format.html { render :new }
        format.json { render json: @order_item.errors,
          status: :unprocessable_entity }
      end
    end
  end

end
