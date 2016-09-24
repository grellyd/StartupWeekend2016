class CreateTrips < ActiveRecord::Migration[5.0]
  def change
    create_table :trips do |t|
      t.date :date
      t.time :arrival
      t.boolean :isDriver
      t.references :origin_location
      t.references :destination_location

      t.timestamps
    end
  end
end
