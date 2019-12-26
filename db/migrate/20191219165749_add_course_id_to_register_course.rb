class AddCourseIdToRegisterCourse < ActiveRecord::Migration[5.0]
  def change
    add_column :register_courses, :course_id, :integer
  end
end
