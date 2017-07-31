class WelcomeController < ApplicationController

	def self.get_details(data)
	end

	def index
		@suppliers = Supplier.all
	end
end
