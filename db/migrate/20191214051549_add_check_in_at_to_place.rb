class AddCheckInAtToPlace < ActiveRecord::Migration[5.0]
  def change
    add_column :places, :check_in_at, :datetime
  end
end
