class CreateRegisterCourses < ActiveRecord::Migration[5.0]
  def change
    create_table :register_courses do |t|

      t.timestamps
    end
  end
end
