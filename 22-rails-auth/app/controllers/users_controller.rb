class UsersController < ApplicationController
  skip_before_action :authorized?, only: [:new, :create]

  def new
    @user = User.new
  end

  def create
    # byebug
    @user = User.create(user_params)
    if @user.valid?
      session[:user_id] = @user.id
      redirect_to colors_path
    else
      redirect_to new_user_path
    end
  end

  private
  def user_params
    params.require(:user).permit(:name, :username, :password)
  end

end
