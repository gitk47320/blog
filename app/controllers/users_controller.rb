class UsersController < ApplicationController
  before_action :logged_in_user
  def show
  end

  private
  def logged_in_user
    unless logged_in?
      redirect_to login_path
    end
  end
end
