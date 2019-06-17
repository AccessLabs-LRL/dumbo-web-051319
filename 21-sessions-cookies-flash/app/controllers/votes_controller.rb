class VotesController < ApplicationController

  def create
    # byebug
    if @can_vote
      vote_once
      @vote = Vote.create(color_id: params[:color_id])
      flash["messages"] = "You have successfully voted!"
    else
      flash["messages"] = "Too bad. You ran out of votes!"
    end
    redirect_to colors_path
  end

end
