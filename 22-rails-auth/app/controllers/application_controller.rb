class ApplicationController < ActionController::Base
  before_action :find_user
  before_action :authorized?

  def find_user
    @user_id = session[:user_id]
    @logged_in = !!@user_id
    if @logged_in
      @current_user = User.find(@user_id)
      @votes_remaining = @current_user.votes_remaining
      @can_vote = @votes_remaining > 0
    end
  end

  def logout
    session[:user_id] = nil
  end

  def authorized?
    unless @logged_in
      return redirect_to colors_path
    end
  end

end
