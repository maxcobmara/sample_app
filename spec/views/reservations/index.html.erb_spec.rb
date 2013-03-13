require 'spec_helper'

describe "reservations/index" do
  before(:each) do
    assign(:reservations, [
      stub_model(Reservation,
        :name => "Name",
        :identification => "Identification",
        :flight_id => 1
      ),
      stub_model(Reservation,
        :name => "Name",
        :identification => "Identification",
        :flight_id => 1
      )
    ])
  end

  it "renders a list of reservations" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "Identification".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
  end
end
