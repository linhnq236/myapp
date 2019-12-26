class Place < ApplicationRecord
  belongs_to :course
  belongs_to :people

  def self.to_csv(options = {})
    CSV.generate(options) do |csv|
      csv << ["Student code", "Name", "Check in", "Date", "Status"]
      all.each do |t|
        csv << [t.people.code,t.people.person_name, ApplicationController.helpers.format_time(t.check_in_at), t.date]
      end
    end
  end
end
