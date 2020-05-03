class FollowsController < ApplicationController

  def create
    @post = Post.find_by(id: params[:post_id])
    @follow = Follow.new(
      follow_id: @current_user.id,
      user_id: @post.user_id
    )
    @follow.save
    redirect_to("/posts/#{params[:post_id]}")
  end

  def destroy
    @post = Post.find_by(id: params[:post_id])
    @follow = Follow.find_by(
      follow_id: @current_user.id,
      user_id: @post.user_id
    )
    @follow.destroy
    redirect_to("/posts/#{params[:post_id]}")
  end

  def follows
    @user = User.find_by(id: params[:id])
    @follows = Follow.where(user_id: @user.id)
  end
end
