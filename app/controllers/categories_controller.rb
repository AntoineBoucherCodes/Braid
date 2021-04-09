class CategoriesController < ApplicationController

  def categories_index
    category_name = request.env['REQUEST_URI'].split("/").second
    @category = Categorie.where(name: category_name).first
    @products = Product.where(category_id: @category.id.to_s)
    authorize @category
  end
end
