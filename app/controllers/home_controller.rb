class HomeController < ApplicationController

	def index
	end

	def go_to_chat
		@user = User.find_or_create_by(
			:name => params[:username], 
			:email => params[:email], 
			:role_id => params[:department].to_i 
			)
		if @user.valid?
			redirect_to @user.is_employee? ? employee_chat_user_path(@user) : user_chat_user_path(@user)
		else
			redirect_to root_path, :alert => "#{@user.errors.full_messages.join(',')}"
		end
	end

end
