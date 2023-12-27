class CategoriesController < ApplicationController
  def index
    @categories = Category.all
  end


  # def show_category
  #   @category = Category.find(params[:id])
  #   @products = @category.products
  # end
  

  def show
@category = Category.find(params[:id])
  @products = @category.products
  end
  
  
end
