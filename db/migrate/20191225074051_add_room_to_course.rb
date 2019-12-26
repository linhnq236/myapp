class AddRoomToCourse < ActiveRecord::Migration[5.0]
  def change
    add_reference :courses, :room, foreign_key: true
  end
end
