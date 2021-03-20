class StoresController < ApplicationController
  before_action :require_login, only: [:new, :create, :edit, :update, :destroy]
  before_action :find_store, only: [:show, :edit, :update, :destroy]

  def index
    @stores = Store.all
  end

  def show
  end

  def new
    # instantiate the form_for
    @store = Store.new
  end

  def create
    @store = Store.new(store_params)
    @store.user = current_user
    if @store.save
      redirect_to store_path(@store)
    else
      render :new
    end
  end

  def edit
  end

  def update
    @store.update(store_params)
    redirect_to store_path(@store)
  end

  def destroy
    @store.destroy
    redirect_to stores_path
  end

  private

  def store_params
    params.require(:store).permit(:name, :address, :discount_breakpoints, :description)
  end

  def find_store
    @store = Store.find(params[:id])
  end

  def require_login
    unless current_user
      redirect_to new_user_session_path
    end
  end
end
