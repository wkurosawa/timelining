class CreatePeriods < ActiveRecord::Migration
  def change
    create_table :periods do |t|
      t.string :name
      t.date :start
      t.date :end
      t.integer :timeline_id

      t.timestamps
    end
    add_index :periods, :timeline_id
  end
end
