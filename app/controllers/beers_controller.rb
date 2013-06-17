class BeersController < ApplicationController
  def show
    @beer = Beer.find(params[:id])
    @like = @beer.likes.build
  end
end
