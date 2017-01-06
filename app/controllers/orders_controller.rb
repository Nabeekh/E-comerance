class OrdersController < ApplicationController
	before_action :get_product, only:[:create , :new]
	def index
		@order = Order.all
	end
	def new
		@order = Order.new
	end
	def show
		@order = Order.find(params[:id])
	end
	def create
		@order = Order.new
		@order.product_id = @product.id
		@order.save
		redirect_to  category_sub_category_product_orders_path (@order)
	end
def destroy
		@order = Order.find(params[:id])
		@order.destroy
		redirect_to category_sub_category_product_orders_path
	end
	private
	def get_product
		@product = Product.find(params[:product_id])
	end
end
