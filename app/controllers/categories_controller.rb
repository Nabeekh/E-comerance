class CategoriesController < ApplicationController
	def index
		@categories = Category.all
	end
	def new
		@Category = Category.new
	end
	def show
		@categories = Category.find(params[:id])
	end
	def create
		@category = Category.new(category_params)
		@category.save
		redirect_to @category
	end
	private
	def category_params
		params.require(:category).permit(:name, :description, :avatar)
	end
end
