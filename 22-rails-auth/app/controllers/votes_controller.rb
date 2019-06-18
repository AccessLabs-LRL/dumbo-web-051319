class VotesController < ApplicationController
  # before_action :authorized?

  def index
  end

  def create
    # byebug
    if @can_vote
      @vote = Vote.create(color_id: params[:color_id], user: @current_user)
      flash["messages"] = "You have successfully voted!"
    else
      flash["messages"] = "Too bad. You ran out of votes!"
    end
    redirect_to colors_path
  end

  def destroy
    @vote = Vote.find(params[:id])
    @vote.destroy
    redirect_to votes_path
  end


end
