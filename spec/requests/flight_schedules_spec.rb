require 'spec_helper'

describe "FlightSchedules" do
  describe "GET /flight_schedules" do
    it "works! (now write some real specs)" do
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
      get flight_schedules_path
      response.status.should be(200)
    end
  end
end
