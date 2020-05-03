class LikesController < ApplicationController

  def create
    @like = Like.new(
      user_id: @current_user.id,
      post_id: params[:post_id]
    )
    @like.save
    redirect_to("/posts/#{params[:post_id]}")
  end

  def destroy
    @like = Like.find_by(
      user_id: @current_user.id,
      post_id: params[:post_id]
    )
    @like.destroy
    redirect_to("/posts/#{params[:post_id]}")
  end

  def likes
    @user = User.find_by(id: params[:id])
    @likes = Like.where(user_id: @user.id)
  end
end
