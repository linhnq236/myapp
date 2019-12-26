module Admin
  class RegisterCoursesController < ApplicationController
    skip_before_action :verify_authenticity_token

    # GET /register_courses
    # GET /register_courses.json
    def index
      @register_courses = RegisterCourse.all
    end

    # GET /register_courses/1
    # GET /register_courses/1.json
    def show
    end

    # GET /register_courses/new
    def new
      @register_course = RegisterCourse.new
    end

    # GET /register_courses/1/edit
    def edit
    end

    # POST /register_courses
    # POST /register_courses.json
    def create
      if RegisterCourse.where(register_course_params).exists?
        render json:{status: "Exists", data: -1}
      else
        @register_course = RegisterCourse.new(register_course_params)
        if @register_course.save
          render json:{status: "SUCCESS", data: 1}
        else
          render json:{status: "FAILS", data: @register_course.errors}
        end
      end
    end

    # PATCH/PUT /register_courses/1
    # PATCH/PUT /register_courses/1.json
    def update
      respond_to do |format|
        if @register_course.update(register_course_params)
          format.html { redirect_to @register_course, notice: 'Register course was successfully updated.' }
          format.json { render :show, status: :ok, location: @register_course }
        else
          format.html { render :edit }
          format.json { render json: @register_course.errors, status: :unprocessable_entity }
        end
      end
    end

    # DELETE /register_courses/1
    # DELETE /register_courses/1.json
    def destroy
      @register_course.destroy
      respond_to do |format|
        format.html { redirect_to register_courses_url, notice: 'Register course was successfully destroyed.' }
        format.json { head :no_content }
      end
    end

    private
      # Use callbacks to share common setup or constraints between actions.
      def set_register_course
        @register_course = RegisterCourse.find(params[:id])
      end

      # Never trust parameters from the scary internet, only allow the white list through.
      def register_course_params
        params.permit(:people_id, :course_id)
      end
  end

end
