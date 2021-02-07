class SessionsController < ApplicationController
  def new
  end

  def create
    @user = User.find_by(login_id: params[:session][:login_id])
    if @user && @user.authenticate(params[:session][:password])
      log_in(@user)
      redirect_to @user, flash: { success: 'ログインしました' }
    else
      flash.now[:danger] = 'IDまたはパスワードが不正のためログインできませんでした'
      render :new
    end
  end

  def destroy
    session.clear
    current_user = nil
    redirect_to login_path, flash: { success: 'ログアウトしました' }
  end
end
