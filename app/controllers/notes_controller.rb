class NotesController < ApplicationController

  def index
    if current_user.admin == 1
      redirect_to "/admin/notes"
    elsif current_user.admin == 2
      redirect_to "/teacher/notes"
    else
      redirect_to "/student/notes"
    end
  end
end
