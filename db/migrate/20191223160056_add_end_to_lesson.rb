class AddEndToLesson < ActiveRecord::Migration[5.0]
  def change
    add_column :lessons, :end, :time
  end
end
