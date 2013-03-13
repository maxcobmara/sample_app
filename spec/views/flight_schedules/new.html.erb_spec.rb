require 'spec_helper'

describe "flight_schedules/new" do
  before(:each) do
    assign(:flight_schedule, stub_model(FlightSchedule,
      :flight_code => "MyString",
      :to => "",
      :from => "",
      :flight_tim => "9.99",
      :seats => "",
      :price => "9.99"
    ).as_new_record)
  end

  it "renders new flight_schedule form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => flight_schedules_path, :method => "post" do
      assert_select "input#flight_schedule_flight_code", :name => "flight_schedule[flight_code]"
      assert_select "input#flight_schedule_to", :name => "flight_schedule[to]"
      assert_select "input#flight_schedule_from", :name => "flight_schedule[from]"
      assert_select "input#flight_schedule_flight_tim", :name => "flight_schedule[flight_tim]"
      assert_select "input#flight_schedule_seats", :name => "flight_schedule[seats]"
      assert_select "input#flight_schedule_price", :name => "flight_schedule[price]"
    end
  end
end
