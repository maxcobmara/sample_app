class Reservation < ActiveRecord::Base
  attr_accessible :flight_id, :identification, :name
  
  belongs_to :flight_schedule, :foreign_key => 'flight_id'
end
