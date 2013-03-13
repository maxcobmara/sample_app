class CreateReservations < ActiveRecord::Migration
  def change
    create_table :reservations do |t|
      t.string :name
      t.string :identification
      t.integer :flight_id

      t.timestamps
    end
  end
end
