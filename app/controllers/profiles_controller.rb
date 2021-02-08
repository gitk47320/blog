class ProfilesController < ApplicationController
  def edit
    @user = User.find(params[:user_id])
    @profile = @user.profile
    render 'users/profile/edit'
  end
  
  def update
    @profile = User.find(params[:user_id]).build_profile(profile_params)
    if @profile.save
      redirect_to user_path(current_user.id), flash: { success: t('flash.profile.update') }
    else
      render :edit
    end
  end

  def create
  end

  private
  def profile_params
    params.require(:profile).permit(:nickname, :selfintro)
  end
end
