module Admin
  class CoursesController < AdminController
    before_action :set_course, only: [:show, :edit, :update, :destroy]

    # GET /courses
    # GET /courses.json
    def index
      @courses = Course.includes(:people, :subject)
      @subjects = Subject.all
      @users = People.includes(:user)
      @lessons = Lesson.all
      @rooms = Room.all
    end

    # GET /courses/1
    # GET /courses/1.json
    def show
    end

    # GET /courses/new
    def new
      @course = Course.new
    end

    # GET /courses/1/edit
    def edit
    end

    # POST /courses
    # POST /courses.json
    def create
      @course = Course.new(params_course)
      if @course.save
        redirect_to "/admin/courses"
      else
        redirect_to "/admin/courses"
      end
    end

    # PATCH/PUT /courses/1
    # PATCH/PUT /courses/1.json
    def update

    end

    # DELETE /courses/1
    # DELETE /courses/1.json
    def destroy

    end

  private
    def params_course
      params.require(:course).permit(:code, :people_id, :subject_id, :start, :end, :total, :lesson_id, :room_id)
    end
  end
end
