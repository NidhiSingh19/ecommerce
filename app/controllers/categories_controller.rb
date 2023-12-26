class CategoriesController < ApplicationController
  def index
    @categories = Category.all
  end

  def show
    @category = Category.find(params[:id])
    @products = @category.products
    # respond_to do |format|
    #   format.js
    # end
  end
  
  
end
