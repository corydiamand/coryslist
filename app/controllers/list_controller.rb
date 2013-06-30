class ListController < ApplicationController
	before_filter :authorize

	def new
		@list = List.new
	end

	def create
  	@list = List.new(params[:list])
  	@list.user_id = current_user.id
	  if @list.save
	  	redirect_to dashboard_url, :notice => "List Created!"
	  else 
	  	render dashboard_url
	  end
	end
end
