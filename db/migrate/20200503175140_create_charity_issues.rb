class CreateCharityIssues < ActiveRecord::Migration[5.2]
  def change
    create_table :charity_issues do |t|
      t.references :issue, foreign_key: true
      t.references :charity, foreign_key: true

      t.timestamps
    end
  end
end
