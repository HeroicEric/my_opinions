class RacecarsController < ApplicationController
  def index
    @racecars = Racecar.all
  end
end
