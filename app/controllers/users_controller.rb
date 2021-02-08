class UsersController < ApplicationController
  before_action :logged_in_user, only: [:index, :edit, :update, :destroy]
  
  def show
    @user = User.find(params[:id])
    @posts = @user.posts
  end

  def edit
    @user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])
    @user.update(user_params)
    if @user.save
      redirect_to @user, flash: { success: t('flash.user.update') }
    else
      render :edit
    end
  end


  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      log_in(@user)
      # ユーザ作成後に、プロフィールを空レコードで作成しておく
      # Profilescontroller側での制御がなぜかうまくいかないため。
      #todo 気持ち悪いので後で対応する。
      @profile = @user.create_profile
      redirect_to @user, flash: { success: t('flash.user.create') }
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
    params.require(:user).permit(:login_id, :email, :password)
  end
end