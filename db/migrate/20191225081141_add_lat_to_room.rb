class AddLatToRoom < ActiveRecord::Migration[5.0]
  def change
    add_column :rooms, :lat, :string
  end
end
