class SeatsController < ApplicationController
	
	
	def index
		
		@seats = Seat.all
		
		respond_to do |format|
			format.html #index.html.erb
		end
	end

end
