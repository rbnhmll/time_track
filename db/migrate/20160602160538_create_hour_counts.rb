class CreateHourCounts < ActiveRecord::Migration
  def change
    create_table :hour_counts do |t|
      t.integer :timecard_id
      t.date :day
      t.integer :hours

      t.timestamps null: false
    end
  end
end
