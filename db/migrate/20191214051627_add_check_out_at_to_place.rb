class AddCheckOutAtToPlace < ActiveRecord::Migration[5.0]
  def change
    add_column :places, :check_out_at, :datetime
  end
end
