module Admin
  class PlacesController < ApplicationController
    skip_before_action :verify_authenticity_token

    def create
      date = Time.zone.now.to_date
      if Place.where(check_date_course.merge(is_check_in:true)).exists?
        render json:{status: "Exists", data: -1}
      else
        @place = Place.new(place_params.merge(date: date, is_check_in:true, check_in_at: Time.zone.now))
        if @place.save
          render json:{status: "SUCCESS", data: 1}
        else
          render json:{status: "FAILS", data: @place.errors}
        end
      end
    end
    def check_out
      date = Time.zone.now.to_date
      if Place.where(check_date_course.merge(is_check_out:true)).exists?
        render json:{status: "Exists", data: -1}
      else
        @place = Place.where(check_date_course)

        if @place.update(is_check_out:true, check_out_at: Time.zone.now)
          render json:{status: "SUCCESS", data: 1}
        else
          render json:{status: "FAILS", data: @place.errors}
        end
      end
    end


    private

      # Never trust parameters from the scary internet, only allow the white list through.
      def place_params
        params.permit(:lat, :lon, :course_id, :is_check_in, :is_check_out, :check_in_at, :check_out_at, :date, :people_id)
      end
      def check_date_course
        params.permit(:course_id, :date, :people_id)
      end
  end

end
