class LikesController < ApplicationController
  def create
    @like = parent.likes.build
    @like.user = current_user

    if @like.save
      redirect_to parent,
        notice: "#{parent.class} liked successfully!"
    else
      redirect_to parent
    end
  end

  private
  def parent
    @parent ||= find_parent
  end

  def find_parent
    parent = nil

    params.each do |name, value|
      if name =~ /(.+)_id$/
        parent = $1.classify.constantize.find(value)
      end
    end

    parent
  end
end
