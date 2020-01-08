class AddUseToNote < ActiveRecord::Migration[5.0]
  def change
    add_column :notes, :use, :integer
  end
end
