class SessionsController < ApplicationController
	def new
	end
	def create
		user = User.find_by_name(params[:session][:name])
		if user
			if (user.name ==  params[:session][:name] && user.password == params[:session][:password])
				sign_in(user)
			end
		end
		redirect_to root_path
	end
end
