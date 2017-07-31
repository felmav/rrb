class WelcomeController < ApplicationController

	def self.get_details(data)
	end
	
	def index
		@suppliers = Supplier.all

		@products = Product.all

		
	end
end
