class CreateSchedules < ActiveRecord::Migration[6.0]
  def change
    create_table :schedules do |t|
      t.datetime :start_working_time
      t.datetime :end_working_time
      t.datetime :start_lunch_time
      t.datetime :end_lunch_time
      t.datetime :deleted_at
      t.references :schedulable, polymorphic: true
      t.timestamps
    end

    add_index :schedules, :deleted_at
  end
end
