class ProductsController < ApplicationController
	def create
		@supplier = Supplier.find(params[:supplier_id])
		@product = @supplier.products.create(product_params)
		redirect_to supplier_path(@supplier)
	end

	def set_details        
		WelcomeController.get_details(data)
	end

	private
		def product_params
		params.require(:product).permit(:product_name, :product_code, :price, :quantity)
		end
end
