class CreateIssues < ActiveRecord::Migration[5.2]
  def change
    create_table :issues do |t|
      t.string :name
      t.string :location
      t.text :description
      t.float :latitude
      t.float :longitude

      t.timestamps
    end
  end
end
