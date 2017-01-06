class SubCategoriesController < ApplicationController
	def index
		@categories = Category.find(params[:id])
		@sub_categories = @categories.SubCategories.all
	end
	def new
		@sub_category = SubCategory.new
	end
	def show
		# @categories = Category.find(params[:id])
		@sub_categories = SubCategory.find(params[:id])
		# @sub_category = @categories.sub_categories.find(params[:category_id])
	end
	def create
		@category = Category.find(params[:category_id])
		@sub_categories = @category.sub_categories.new(sub_categories_params)
		@sub_categories.save
		redirect_to category_path(@category)
	end
	def destroy
	end
	private
	def sub_categories_params
		params.require(:sub_category).permit(:name, :avatar)
	end
end
