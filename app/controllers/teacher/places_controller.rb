module Teacher
  require "csv"
  class PlacesController < TeacherController

    def index
      @places = Place.includes(:people).where(course_id: params[:id], date: params[:date])
      @date = params[:date]
      @id = params[:id]
      respond_to do |format|
        format.html
        format.csv { render text: @places.to_csv }
      end
    end
  end
end
