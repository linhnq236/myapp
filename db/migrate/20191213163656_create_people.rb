class CreatePeople < ActiveRecord::Migration[5.0]
  def change
    create_table :people do |t|
      t.string :person_name
      t.string :code
      t.string :sex
      t.date :born
      t.string :address
      t.string :telephone

      t.timestamps
    end
  end
end
