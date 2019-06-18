class LoginController < ApplicationController
  
  def new
  end

  def create
    @user = User.find_by(username: params[:username])
    if @user && @user.authenticate(params[:password])
      flash[:messages] = "Logging in #{@user.name}."
      redirect_to colors_path
    else
      flash[:messages] = "Incorrect username or password!"
      redirect_to new_login_path
    end
  end

end
