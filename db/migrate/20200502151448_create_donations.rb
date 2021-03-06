class CreateDonations < ActiveRecord::Migration[5.2]
  def change
    create_table :donations do |t|
      t.references :charity, foreign_key: true
      t.references :user, foreign_key: true
      t.string :session_id
      t.monetize :amount
      t.timestamps
    end
  end
end
