class SessionsController < ApplicationController
  skip_before_action :authorize
  def new
  end

  def create
  	user = User.find_by(name: params[:name])
  	if user and user.authenticate(params[:password])
  		session[:user_id] = user.id
      session[:user_name] = user.name
  		redirect_to admin_url
  	else
  		redirect_to login_url, notice: "Invalid user/password combination"
  	end

  end

  def destroy
  	if session[:user_id]
      session[:user_id] = nil
      session[:user_name] = nil
    	redirect_to store_url, notice: "Logged out"
    else
      redirect_to store_url, notice: "Not logged In"
    end
  end
end
