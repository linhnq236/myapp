class CreatePoints < ActiveRecord::Migration[5.0]
  def change
    create_table :points do |t|
      t.integer :people_id
      t.date :date
      t.float :point
      t.integer :course_id

      t.timestamps
    end
  end
end
