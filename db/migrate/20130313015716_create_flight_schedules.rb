class CreateFlightSchedules < ActiveRecord::Migration
  def change
    create_table :flight_schedules do |t|
      t.string :flight_code
      t.integer :to
      t.integer :from
      t.date :depart_at
      t.time :depart_on
      t.decimal :flight_tim
      t.integer :seats
      t.decimal :price

      t.timestamps
    end
  end
end
