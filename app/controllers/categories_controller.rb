class CategoriesController < ApplicationController
  
  def new 
    @category = Category.new
  end
  
  def create
    @category = Category.new
    @category.name = params[:category][:name]
    if @category.save
      
      flash[:notice] = "Category saved!"
      redirect_to "/add_category"
    else
      flash[:notice] = "Something happened. Please try again!"
      redirect_to "/add_category"
    end
  end
  
end
