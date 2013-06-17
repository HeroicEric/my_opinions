class RacecarsController < ApplicationController
  def index
    @racecars = Racecar.all
  end

  def show
    @racecar = Racecar.find(params[:id])
    @like = @racecar.likes.build
  end
end
