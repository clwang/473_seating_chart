class SeatsController < ApplicationController
	
	
	def index
		
		@seats = Seat.all
	
		respond_to do |format|
			format.html #index.html.erb
		end
	end
		
	def update
  	@seat = Seat.find(params[:id])

  	@seat.update_attributes(:taken => params[:taken], :assigned_student => params[:assigned_student] )
  	@seat.save
    
    respond_to do |format|
      format.html { render :nothing => true, :layout => false }      
    end

  end
	
end
