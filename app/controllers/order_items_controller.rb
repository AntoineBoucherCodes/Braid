class OrderItemsController < ApplicationController
  include CurrentCart
  before_action :set_cart, only: [:create]
  before_action :set_order_item, only: [:show, :edit, :update, :destroy]

  # GET /line_items/1
  # GET /line_items/1.json
  def show
  end

  # GET /line_items/new
  def new
    @order_item = LineItem.new
  end

  def create
    product = Product.find(params[:product_id])
    @order_item = @cart.add_product(product)

    respond_to do |format|
      if @order_item.save
        format.html { redirect_to @order_item.cart,
          notice: "#{@order_item.product.name} was successfully added to your cart." }
        format.json { render :show,
          status: :created, location: @order_item }
      else
        format.html { render :new }
        format.json { render json: @order_item.errors,
          status: :unprocessable_entity }
      end
    end
    authorize @order_item
  end

  private

  def order_item_params
    params.require(:order_item).permit(:product_id)
  end

  def set_order_item
    @order_item = OrderItem.find(params[:id])
  end

end
