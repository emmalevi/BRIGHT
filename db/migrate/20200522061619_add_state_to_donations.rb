class AddStateToDonations < ActiveRecord::Migration[5.2]
  def change
    add_column :donations, :state, :string
  end
end
