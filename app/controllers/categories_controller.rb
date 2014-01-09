class CategoriesController < ApplicationController
  def new
    @categories = Category.new
  end

  def create
    @category = current_user.categories.build(category_params)
    if @category.save
      redirect_to @category, notice: 'Note was successfully created.'
    else
      render 'new'
    end
  end
def category_params
  params.require(:category).permit(:name)
end
end
