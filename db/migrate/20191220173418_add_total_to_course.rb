class AddTotalToCourse < ActiveRecord::Migration[5.0]
  def change
    add_column :courses, :total, :integer
  end
end
