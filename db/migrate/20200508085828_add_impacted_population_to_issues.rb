class AddImpactedPopulationToIssues < ActiveRecord::Migration[5.2]
  def change
    add_column :issues, :impacted_population, :integer
  end
end
