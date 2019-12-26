class AddPeopleIdToPlace < ActiveRecord::Migration[5.0]
  def change
    add_column :places, :people_id, :integer
  end
end
