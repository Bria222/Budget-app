class CategoriesController < ApplicationController
  before_action :authenticate_user!
  def index
    @categories = current_user.categories
  end

  def new
    @category = Category.new
  end

  

  private

  def category_params
    params.require(:new_category).permit(:name, :icon)
  end
end
