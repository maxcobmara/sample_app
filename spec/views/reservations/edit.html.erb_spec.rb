require 'spec_helper'

describe "reservations/edit" do
  before(:each) do
    @reservation = assign(:reservation, stub_model(Reservation,
      :name => "MyString",
      :identification => "MyString",
      :flight_id => 1
    ))
  end

  it "renders the edit reservation form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => reservations_path(@reservation), :method => "post" do
      assert_select "input#reservation_name", :name => "reservation[name]"
      assert_select "input#reservation_identification", :name => "reservation[identification]"
      assert_select "input#reservation_flight_id", :name => "reservation[flight_id]"
    end
  end
end
