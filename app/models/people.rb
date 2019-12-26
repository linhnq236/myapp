class People < ApplicationRecord
  belongs_to :department
  belongs_to :user
  has_many :courses
  has_many :register_courses
  has_many :places
end
