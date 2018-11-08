class CreateSchedules < ActiveRecord::Migration[5.0]
  def change
    create_table :schedules do |t|
      t.references :employee, foreign_key: true
      t.date :scheduled_day
      t.time :hours
      t.datetime :start_time
      t.datetime :end_time

      t.timestamps
    end
  end
end
