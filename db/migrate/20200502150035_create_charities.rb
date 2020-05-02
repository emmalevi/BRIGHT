class CreateCharities < ActiveRecord::Migration[5.2]
  def change
    create_table :charities do |t|
      t.string :name
      t.string :description
      t.string :location
      t.text :description
      t.float :latitude
      t.float :longitude
      t.string :rating
      t.integer :total_donors
      t.integer :total_donations
      t.integer :total_goal


      t.timestamps
    end
  end
end
