class TeacherController < ApplicationController
  protect_from_forgery with: :exception
  before_action :check_teacher

  def check_teacher
    if current_user.admin == 2
    else
      redirect_to root_path
    end
  end
end
