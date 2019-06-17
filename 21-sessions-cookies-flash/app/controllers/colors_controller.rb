class ColorsController < ApplicationController
  # skip_before_action :setup_vote_stuff, only: [:index]

  def index
    if request.path != colors_path
      redirect_to colors_path
    end
    @colors = Color.includes(:votes).all
  end

end
