class CreateTimelines < ActiveRecord::Migration
  def change
    create_table :timelines do |t|
      t.string :name
      t.integer :user_id

      t.timestamps
    end
    add_index :timelines, :user_id
  end
end
