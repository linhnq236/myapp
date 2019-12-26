class Course < ApplicationRecord
  belongs_to :subject
  belongs_to :people
  has_many :register_courses
  has_many :places
  belongs_to :lesson
  belongs_to :room
end
