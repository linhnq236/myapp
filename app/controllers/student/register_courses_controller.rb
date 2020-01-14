module Student
  class RegisterCoursesController < StudentController
    before_action :set_subject, only: [:show, :edit, :update, :destroy]
    def delete
      if RegisterCourse.delete(params[:id])
        redirect_to "/student/courses"
      end
    end
  end
end
