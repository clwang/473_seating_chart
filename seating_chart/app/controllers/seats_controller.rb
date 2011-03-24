class SeatsController < ApplicationController
	
	
	def index
		
		@seats = Seat.all
		
		
		respond_to do |format|
			format.html #index.html.erb
		end
	end
		
	def update
		@seat = Seat.find(params[:id])
		
		@seat.update_attributes(params[:seat])
		
		respond_to do |format|	
			format.html { redirect_to  '/seats' }
		end
	end

end
