class Destination < ActiveRecord::Base
  attr_accessible :aiport_code, :airport_name
  
  has_many :tos,    :class_name => 'FlightSchedule', :foreign_key => 'to'
  has_many :froms,    :class_name => 'FlightSchedule', :foreign_key => 'from'
end
