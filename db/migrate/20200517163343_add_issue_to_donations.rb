class AddIssueToDonations < ActiveRecord::Migration[5.2]
  def change
    add_reference :donations, :issue, foreign_key: true
  end
end
