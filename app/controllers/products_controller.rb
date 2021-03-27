class ProductsController < ApplicationController
  before_action :require_login, only: [:new, :create, :edit, :update, :destroy]
  before_action :find_product, except: [:index, :new, :create]
  before_action :set_store, only: [:new, :delete]

  def index
    if params[:query].present?
      @products = policy_scope(Product.search_by_name_and_description(params[:query]))
    else
      @products = policy_scope(Product).order(created_at: :desc)
    end
  end

  def new
    @categories = Categorie.all.map { |categorie| [categorie.name, categorie.id] }
    @product = Product.new
    authorize @product
  end

  def create
    @product = Product.new(product_params)
    @store = Store.find(params[:store_id])
    @product.store = @store
    if @product.save
      redirect_to product_path(@product)
    else
      render :new
    end
    authorize @product
  end

  def show
    authorize @product
  end

  def edit
    authorize @product
  end

  def update
    if @product.update(product_params)
      redirect_to product_path(@product), notice: "#{@product.name} was successfully updated"
    else
      render :edit
    end
    authorize @product
  end

  def destroy
    @product.store = @store
    @product.destroy
    redirect_to store_path(@store)
    authorize @product
  end

  private

  def find_product
    @product = Product.find(params[:id])
  end

  def set_store
    @store = Store.find(params[:store_id])
  end

  def product_params
    params.require(:product).permit(:name, :description, :price, :category_id, photos: [])
  end

  def require_login
    unless current_user
      redirect_to new_user_session_path
    end
  end
end
