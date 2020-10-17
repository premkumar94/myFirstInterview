class DashboardsController < ApplicationController
	before_action :require_login

	def index
		user_id = session[:user_id]
		@name = User.find(user_id)
	end

end
