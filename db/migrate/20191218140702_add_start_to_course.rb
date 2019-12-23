class AddStartToCourse < ActiveRecord::Migration[5.0]
  def change
    add_column :courses, :start, :date
  end
end
