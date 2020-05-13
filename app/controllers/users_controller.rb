class UsersController < ApplicationController
  before_action :authenticate_user, {only: [:show, :edit, :update, :likes, :follows]}
  before_action :forbid_login_user, {only: [:new, :create, :login_form, :login]}
  before_action :ensure_correct_user, {only: [:edit, :update]}
  protect_from_forgery with: :null_session, only: [:update]

  def index
  end

  def new
    @user = User.new
  end

  def show
    @user = User.find_by(id: params[:id])
    @posts = Post.where(user_id: params[:id]).page(params[:page]).per(9)
    @follows_count = Follow.where(user_id: params[:id]).count
  end

  def edit
    @user = User.find_by(id: params[:id])
  end

  def update
    @user = User.find_by(id: params[:id])
    @user.name = params[:name]
    @user.email = params[:email]
    @user.profile = params[:profile]

    if params[:image]
      @user.name_image = "#{@user.id}.jpg"
      image = params[:image]
      File.binwrite("public/user_images/#{@user.name_image}", image.read)
    end

    if @user.save
      flash[:notice] = "ユーザー情報を編集しました"
      redirect_to("/users/#{params[:id]}")
    else
      render("/users/edit")
    end
  end

  def create
    @user = User.new(
      name: params[:name],
      email: params[:email],
      name_image: "default_user.jpg",
      password: params[:password]
    )
    if @user.save
      flash[:notice] = "ユーザー登録が完了しました"
      session[:user_id] = @user.id
      redirect_to("/")
    else
      render("/users/new")
    end
  end

  def login_form
  end

  def simple_login
    @user = User.find_by(id: 12)

    flash[:notice] = "ログインしました"
    session[:user_id] = @user.id
    redirect_to("/")
  end

  def login
    @user = User.find_by(email: params[:email])

    if @user && @user.authenticate(params[:password])
      flash[:notice] = "ログインしました"
      session[:user_id] = @user.id
      redirect_to("/")
    else
      @email = params[:email]
      @password = params[:password]
      @error_message = "メールアドレスまたはパスワードが間違ってます"
      render("/users/login_form")
    end
  end

  def logout
    session[:user_id] = nil
    flash[:notice] = "ログアウトしました"
    redirect_to("/")
  end

  def likes
    @user = User.find_by(id: params[:id])
    @likes = Like.where(user_id: @user.id).page(params[:page]).per(20)
  end

  def follows
    @user = User.find_by(id: params[:id])
    @post = Post.find_by(user_id: @user.id)
    @follows = Follow.where(follow_id: @user.id).page(params[:page]).per(20)

  end

  def destroy
    @post = Post.find_by(id: params[:post_id])
    @post.destroy
    flash[:notice] = "投稿を削除しました"
    redirect_to("/")
  end

  def ensure_correct_user
    if @current_user.id != params[:id].to_i
      flash[:notice] = "権限がありません"
      redirect_to("/")
    end
  end
end
