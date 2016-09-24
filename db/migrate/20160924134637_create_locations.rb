class CreateLocations < ActiveRecord::Migration[5.0]
  def change
    create_table :locations do |t|
      t.float :lat
      t.float :lon
      t.string :addr
      t.references :trip

      t.timestamps
    end
  end
end
