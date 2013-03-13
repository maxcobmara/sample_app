require 'spec_helper'

describe "flight_schedules/index" do
  before(:each) do
    assign(:flight_schedules, [
      stub_model(FlightSchedule,
        :flight_code => "Flight Code",
        :to => "",
        :from => "",
        :flight_tim => "9.99",
        :seats => "",
        :price => "9.99"
      ),
      stub_model(FlightSchedule,
        :flight_code => "Flight Code",
        :to => "",
        :from => "",
        :flight_tim => "9.99",
        :seats => "",
        :price => "9.99"
      )
    ])
  end

  it "renders a list of flight_schedules" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Flight Code".to_s, :count => 2
    assert_select "tr>td", :text => "".to_s, :count => 2
    assert_select "tr>td", :text => "".to_s, :count => 2
    assert_select "tr>td", :text => "9.99".to_s, :count => 2
    assert_select "tr>td", :text => "".to_s, :count => 2
    assert_select "tr>td", :text => "9.99".to_s, :count => 2
  end
end
