class Api::V1::UsersController < ApplicationController
  skip_before_action :authorized, only: :create

  def create
    user = User.create(user_params)
    if user.valid?
      render json: { token: encode_token(user) }
    else
      render json: { errors: user.errors.full_messages }
    end
  end

  def profile
    render json: current_user, include: "**"
  end

  private

  def user_params
    params.permit(:username, :password)
  end
end
