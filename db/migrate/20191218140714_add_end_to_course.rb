class AddEndToCourse < ActiveRecord::Migration[5.0]
  def change
    add_column :courses, :end, :date
  end
end
