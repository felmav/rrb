class SuppliersController < ApplicationController
	def index
		@suppliers = Supplier.all
	end

	def show
		@supplier = Supplier.find(params[:id])
		
	end

	def new
		@supplier = Supplier.new
	end

	def edit
	  @supplier = Supplier.find(params[:id])
	end
	 
	def create
		@supplier = Supplier.new(supplier_params)

		if @supplier.save
		    redirect_to root_path
		  else
		    render 'new'
		  end
  	end

	def update
		@supplier = Supplier.find(params[:id])

		if @supplier.update(supplier_params)
			redirect_to @supplier
		else
			render 'edit'
		end
	end

	def destroy
		@supplier = Supplier.find(params[:id])
		@supplier.destroy

		redirect_to supplier_path
	end

  	def set_details        
		WelcomeController.get_details(data)
	end

  	private
		def supplier_params
			params.require(:supplier).permit(:name, :phone_number)
		end

end
