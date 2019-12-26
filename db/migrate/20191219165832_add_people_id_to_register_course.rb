class AddPeopleIdToRegisterCourse < ActiveRecord::Migration[5.0]
  def change
    add_column :register_courses, :people_id, :integer
  end
end
