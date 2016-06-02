class CreateTimecards < ActiveRecord::Migration
  def change
    create_table :timecards do |t|
      t.integer :user_id
      t.date :start_date
      t.date :end_date
      t.boolean :status
      t.string :project
      t.string :project_type
      t.integer :total_hours
      t.datetime :submit_date
      t.string :approved_by

      t.timestamps null: false
    end
  end
end
