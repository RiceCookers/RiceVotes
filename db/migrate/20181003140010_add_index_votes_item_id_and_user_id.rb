class AddIndexVotesItemIdAndUserId < ActiveRecord::Migration[5.2]
  def change
    add_index :votes, [:item_id, :user_id, :issue_id], :unique => true
  end
end
