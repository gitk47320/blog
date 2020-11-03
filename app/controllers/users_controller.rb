class UsersController < ApplicationController
  before_action :logged_in_user, only: [:index, :edit, :update, :destroy]
  
  def show
    @user = User.find_by(id: current_user.id)
    @posts = @user.posts
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)

    if @user.save
      redirect_to @user
    else
      render :new
    end
  end

  private
  def logged_in_user
    unless logged_in?
      redirect_to login_path
    end
  end

  def user_params
    params.require(:user).permit(:name, :login_id, :email, :password)
  end
end