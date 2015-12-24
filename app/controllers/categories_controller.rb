class CategoriesController < ApplicationController
  before_action :authenticate_user!
  def new
    @category = Category.new
  end

  def create
    @category = Category.new(cat_params)
    @category.user_id = current_user.id
    if @category.save
      redirect_to todos_path, notice: "Category Created"
    else
      redirect_to :back, notice: "Error Creating Category"
    end
  end

  private

  def cat_params
    params.require(:category).permit!
  end

end
