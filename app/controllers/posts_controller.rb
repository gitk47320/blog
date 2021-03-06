class PostsController < ApplicationController
  before_action :logged_in_user, only: [:index, :edit, :update, :destroy]

  def show
    @post = Post.find(params[:id])
    @comments = @post.comments
    @comment = @post.comments.build
  end

  def new
    @post = Post.new
  end

  def create
    @user = User.find(current_user.id)
    @post = @user.posts.build(post_params)
    if @post.save
      redirect_to user_path(current_user.id), flash: { success: t('flash.post.create') }
    else
      render :new
    end
  end

  private
  def post_params
    params.require(:post).permit(:title, :post)
  end
end
