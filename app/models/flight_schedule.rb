class FlightSchedule < ActiveRecord::Base
  attr_accessible :depart_at, :depart_on, :flight_code, :flight_tim, :from, :price, :seats, :to
  
  belongs_to :gotos,    :class_name => 'Destination', :foreign_key => 'to'
  belongs_to :gofroms,    :class_name => 'Destination', :foreign_key => 'from'
  
  has_many :reservations, :foreign_key => 'flight_id'
end
