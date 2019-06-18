class LoginController < ApplicationController
  skip_before_action :authorized?, only: [:new, :create]

  def new
  end

  def create
    @user = User.find_by(username: params[:username])
    if @user && @user.authenticate(params[:password])
      flash[:messages] = "Logging in #{@user.name}."
      session[:user_id] = @user.id
      redirect_to colors_path
    else
      flash[:messages] = "Incorrect username or password!"
      redirect_to new_login_path
    end
  end

  def destroy
    logout
    redirect_to colors_path
  end

end
