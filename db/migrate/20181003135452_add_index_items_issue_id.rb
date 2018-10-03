class AddIndexItemsIssueId < ActiveRecord::Migration[5.2]
  def change
    add_index :items, issue_id
  end
end
