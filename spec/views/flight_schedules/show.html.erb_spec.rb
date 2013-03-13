require 'spec_helper'

describe "flight_schedules/show" do
  before(:each) do
    @flight_schedule = assign(:flight_schedule, stub_model(FlightSchedule,
      :flight_code => "Flight Code",
      :to => "",
      :from => "",
      :flight_tim => "9.99",
      :seats => "",
      :price => "9.99"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Flight Code/)
    rendered.should match(//)
    rendered.should match(//)
    rendered.should match(/9.99/)
    rendered.should match(//)
    rendered.should match(/9.99/)
  end
end
