class CreateOrders < ActiveRecord::Migration[5.2]
  def change
    create_table :orders do |t|
      t.string :session_id
      t.monetize :amount, currency: { present: false }
      t.references :donation, foreign_key: true

      t.timestamps
    end
  end
end
