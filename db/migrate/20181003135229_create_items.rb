class CreateItems < ActiveRecord::Migration[5.2]
  def change
    create_table :items do |t|
      t.integer :issue_id
      t.string :name
      t.string :image

      t.timestamps
    end
  end
end
