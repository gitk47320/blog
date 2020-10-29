class PostsController < ApplicationController
  before_action :logged_in_user, only: [:index, :edit, :update, :destroy]

  def new
    @post = Post.new
  end

  def create
    @post = Post.new(post_params)
    if @post.save!
      redirect_to user_path(current_user.id)
    else
      render :new
    end
  end

  private
  def post_params
    params.require(:post).permit(:title, :post)
  end
end
