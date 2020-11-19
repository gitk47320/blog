class ProfilesController < ApplicationController
  def edit
  end
  
  def new
  end
  
  def update
  end

  private
  def profile_params
    params.require(:user).permit(:login_id, :email, :password)
  end
end
