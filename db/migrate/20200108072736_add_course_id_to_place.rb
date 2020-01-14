class AddCourseIdToPlace < ActiveRecord::Migration[5.0]
  def change
    add_column :places, :course_id, :integer
  end
end
