class PostsController < ApplicationController
  protect_from_forgery with: :null_session, only: [:time]

  def index
    @post = Post.find_by(id: params[:id])
    @user = User.find_by(id: @post.user_id)
    @category = Category.find_by(category_cd: @post.category_cd)
    @show_comments = ItemComment.where(post_id: @post.id)
    @item_comment = ItemComment.new
    @likes_count = Like.where(post_id: @post.id).count
    @follows_count = Follow.where(user_id: @post.user_id).count
  end

  def comment
    @item_comment = ItemComment.new(
      post_id: params[:id],
      user_id: @current_user.id,
      impression: params[:impression]
    )

    if @item_comment.save
      flash[:notice] = "コメントを作成しました"
      redirect_to("/posts/#{params[:id]}")
    else
      flash[:notice] = "投稿に失敗しました"
      redirect_to("/posts/#{params[:id]}")
    end
  end

  def new
    @post = Post.new
  end

  def time
    now = Time.current
  end

  def create
    @post = Post.new(
      item_title: params[:item_title],
      comment: params[:comment],
      category_cd: params[:category_cd],
      user_id: @current_user.id
    )

    if params[:image]
      @post.item_image = "#{time}.jpg"
      image = params[:image]
      File.binwrite("public/item_images/#{@post.item_image}", image.read)
    end

    if @post.save
      flash[:notice] = "投稿を作成しました"
      redirect_to("/")
    else
      render("posts/new")
    end

  end

  def destroy
    @comment = ItemComment.find_by(id: params[:id])
    @comment.destroy
    flash[:notice] = "コメントを削除しました"
    redirect_to("/posts/#{@comment.post_id}")
  end

end
