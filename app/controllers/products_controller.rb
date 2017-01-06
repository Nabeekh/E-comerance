class ProductsController < ApplicationController
	before_action :get_sub_category , only:[:index , :new , :create , :show]
	def index
	end
	def new
		@product = Product.new
	end
	def show
		@product = Product.find(params[:id])
	end
	def create
		@product =@sub_category.products.new(product_params)
		@product.save
		redirect_to category_sub_category_path(id: @sub_category.id)
	end
	def destroy
	end
	private
	def product_params
		params.require(:product).permit(:quantity, :name, :price, :QDiscount, :avatar)
	end
		def get_sub_category
		@sub_category = SubCategory.find(params[:sub_category_id])
	end
end
