class CreateVotes < ActiveRecord::Migration[5.2]
  def change
    create_table :votes do |t|
      t.integer :item_id
      t.integer :user_id
      t.integer :issue_id

      t.timestamps
    end
  end
end
