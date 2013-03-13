require 'spec_helper'

describe "reservations/new" do
  before(:each) do
    assign(:reservation, stub_model(Reservation,
      :name => "MyString",
      :identification => "MyString",
      :flight_id => 1
    ).as_new_record)
  end

  it "renders new reservation form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => reservations_path, :method => "post" do
      assert_select "input#reservation_name", :name => "reservation[name]"
      assert_select "input#reservation_identification", :name => "reservation[identification]"
      assert_select "input#reservation_flight_id", :name => "reservation[flight_id]"
    end
  end
end
