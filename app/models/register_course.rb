class RegisterCourse < ApplicationRecord
  belongs_to :course
  belongs_to :people
end
