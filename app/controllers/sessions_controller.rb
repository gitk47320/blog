class SessionsController < ApplicationController
  def new
  end

  def create
    @user = User.find_by(login_id: session_params[:login_id])
    if @user && @user.authenticate(session_params[:password])
      log_in(@user)
      redirect_to @user
    else
      render new
    end
  end

  def destroy

  end

  private
  def session_params
    params.require(:sessions).permit(:login_id, :password, :name)
  end
end
