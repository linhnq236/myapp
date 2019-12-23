class StudentController < ApplicationController
  protect_from_forgery with: :exception
  before_action :check_student

  def check_student
    if current_user.admin == 3
    else
      redirect_to root_path
    end
  end
end
