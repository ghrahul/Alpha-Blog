class CategoriesController < ApplicationController
  
  def new
    @category = Category.new
  end
  
  def index
    @categories = Category.all
  end
  
  def show
    
  end
  
  def create
    @category = Category.new(category_params)
    if @category.save
      flash[:success] = "You have successfully created the category"
      redirect_to categories_path
    else
      render 'new'
    end
  end
  
  private
  def category_params
    params.require(:category).permit(:name)
  end
  
  
end