class AddColumnIssues < ActiveRecord::Migration[5.2]
  def change
    add_column :issues, :title, :string
    add_column :issues, :description, :string
  end
end
