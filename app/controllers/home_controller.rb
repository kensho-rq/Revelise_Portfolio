class HomeController < ApplicationController

  def top
    if params[:search]
      @posts = Post.where("item_title LIKE ?", "%#{params[:search]}%").page(params[:page]).per(8)
    else
      if params[:category_name]
        @category = Category.find_by(category_name: params[:category_name])
        @posts = Post.where(category_cd: @category.category_cd).page(params[:page]).per(8)
      else
        @posts = Post.all.page(params[:page]).per(8)
      end
    end
  end

end
