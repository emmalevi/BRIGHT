class AddDetailsToIssues < ActiveRecord::Migration[5.2]
  def change
    add_column :issues, :impacted_population, :integer
    add_column :issues, :death_count, :string
    add_column :issues, :origin, :text
  end
end
