module Student
  class CoursesController < StudentController
    skip_before_action :verify_authenticity_token

    def index
      @subjects = Subject.all
      @register_courses = RegisterCourse.includes(:course, :people).order("created_at DESC").where(people_id: current_user.id)
    end
    def show
      @subjects = Subject.all
      gon.current_user = current_user.id
      if params[:id].present?
        @courses = Course.includes(:people).where(subject_id: params[:id])
      else
        @courses = Course.includes(:people).where(subject_id: 0)
      end
      @register_courses = RegisterCourse.includes(:course, :people).where(people_id: current_user.id)
    end

    def timetable
      gon.current_user = current_user.id
      @timetables = RegisterCourse.includes(:course, :people).order("created_at DESC").where(people_id: current_user.id)
    end
  end
end
