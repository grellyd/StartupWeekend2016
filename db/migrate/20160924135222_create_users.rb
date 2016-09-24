class CreateUsers < ActiveRecord::Migration[5.0]
  def change
    create_table :users do |t|
      t.string :fName
      t.string :lName

      t.integer :credits
      t.float :rating
      t.string :onBoarding
      t.boolean :verifiedDriver
      t.string :field
      t.string :gender
      t.string :profilePic
      t.string :description

      # trip collection
      t.references :trips

      # Locations
      t.references :home_location
      t.references :work_location

      t.timestamps
    end
  end
end
