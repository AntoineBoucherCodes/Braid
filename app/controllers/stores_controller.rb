class StoresController < ApplicationController
  def index
    @stores = Store.all
  end

  def show
    @store = Store.find(params[:id])
  end

  def new
    # instantiate the form_for
    @store = Store.new
  end

  def create
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private

  def store_params
    params.require(:store).permit(:address, :discount_breakpoints, :description)
  end

end
