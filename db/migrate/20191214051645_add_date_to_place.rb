class AddDateToPlace < ActiveRecord::Migration[5.0]
  def change
    add_column :places, :date, :date
  end
end
