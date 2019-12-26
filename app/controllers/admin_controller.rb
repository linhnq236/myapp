class AdminController < ApplicationController
  protect_from_forgery with: :exception
  before_action :check_admin
  def check_admin
    if current_user.admin == 1
    else
      redirect_to root_path
    end
  end
end
