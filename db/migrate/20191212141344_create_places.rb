class CreatePlaces < ActiveRecord::Migration[5.0]
  def change
    create_table :places do |t|
      t.string :lat
      t.string :lon

      t.timestamps
    end
  end
end
