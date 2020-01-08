class Place < ApplicationRecord
  belongs_to :course
  belongs_to :people

  def self.to_csv(options = {})
    CSV.generate(options) do |csv|
      csv << ["MSV", "Họ và tên", "Thời gian", "Ngày", "Tình trạng"]
      all.each do |t|
        csv << [t.people.code,t.people.person_name, ApplicationController.helpers.format_time(t.check_in_at), t.date, ApplicationController.helpers.check_location(t.lat.to_i,t.lon.to_i, t.course.room.lat.to_i, t.course.room.lon.to_i)]
      end
    end
  end
end
