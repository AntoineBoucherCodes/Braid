class ProductsController < ApplicationController
  before_action :find_product, except: [:index, :new, :create]
  before_action :set_store, except: [:index, :create, :show, :destroy]

  def index
    @products = Product.all
  end

  def new
    @product = Product.new
  end

  def create
    @product = Product.new(product_params)
    @store = @product.store
    if @product.save
      redirect_to store_product_path(@product)
    else
      render :new
    end
  end

  def show
  end

  def edit
    @product = Product.new
  end

  def update
    if @vaccine.update(vaccine_params)
      redirect_to product_path(@product), notice: "#{@product.name} was successfully updated"
    else
      render :edit
    end
  end

  def destroy
    @product.store = @store
    @product.destroy
    redirect_to store_path(@store)
  end

  private

  def find_product
    @product = Product.find(params[:id])
  end
  def set_store
    @store = Store.find(params[:store_id])
  end

  def product_params
    params.require(:product).permit(:name, :description, :price)
  end
end
