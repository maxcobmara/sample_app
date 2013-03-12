class CreateDestinations < ActiveRecord::Migration
  def change
    create_table :destinations do |t|
      t.string :aiport_code
      t.string :airport_name

      t.timestamps
    end
  end
end
