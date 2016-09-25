class CreateLocations < ActiveRecord::Migration[5.0]
  def change
    create_table :locations do |t|
      t.float :lat
      t.float :lon
      t.string :addr

      # associated trips and user
      t.references :user, null: true

      t.timestamps
    end
  end
end
