class AddIssueTypetoIssues < ActiveRecord::Migration[5.2]
  def change
    add_column :issues, :issue_type, :text
  end
end
