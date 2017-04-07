class SessionsController < ApplicationController
	def new
	end
	def create
		user = User.find_by_name(params[:session][:name])
		if user
			if (user.name == "admin" && user.password == "nativ3")
				sign_in(user)
			end
		end
		redirect_to root_path
	end
end
