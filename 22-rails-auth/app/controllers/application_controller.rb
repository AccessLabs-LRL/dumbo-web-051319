class ApplicationController < ActionController::Base
  before_action :setup_vote_stuff

  def setup_vote_stuff
    session["vote-count"] ||= 5
    @votes_remaining = session["vote-count"]
    @can_vote = @votes_remaining > 0
    # session["vote-count"] = session["vote-count"] || 5
  end

  def vote_once
    session["vote-count"] -= 1
  end

end
