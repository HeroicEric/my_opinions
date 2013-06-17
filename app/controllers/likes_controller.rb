class LikesController < ApplicationController
  def create
    @racecar = Racecar.find(params[:racecar_id])
    @like = @racecar.likes.build
    @like.user = current_user

    if @like.save
      redirect_to racecar_path(@racecar),
        notice: "Racecar liked successfully!"
    else
      redirect_to racecar_path(@racecar)
    end
  end
end
