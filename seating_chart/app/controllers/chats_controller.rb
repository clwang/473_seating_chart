class ChatsController < ApplicationController
  
  def push_message
	  @message = params[:email] + " :: " + (params[:msg])
    
    Pusher["class_chat"].trigger "add_line", @message
    
    respond_to do |format|
      format.html {render :text => "Success", :layout => false}
    end
  end
    
end
