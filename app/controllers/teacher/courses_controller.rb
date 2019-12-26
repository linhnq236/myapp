module Teacher
  class CoursesController < TeacherController
    before_action :set_course, only: [:show, :edit, :update, :destroy]

    def timetable
      gon.current_user = current_user.id
      @timetables = Course.where(people_id: current_user.id)
    end
  end
end
