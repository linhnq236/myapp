class AddLonToRoom < ActiveRecord::Migration[5.0]
  def change
    add_column :rooms, :lon, :string
  end
end
