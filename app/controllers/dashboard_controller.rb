class DashboardController < ApplicationController
	before_filter :authorize
  def index
  	@lists = List.where(:user_id => :current_user)
  end
end
