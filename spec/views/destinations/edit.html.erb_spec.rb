require 'spec_helper'

describe "destinations/edit" do
  before(:each) do
    @destination = assign(:destination, stub_model(Destination,
      :aiport_code => "MyString",
      :airport_name => "MyString"
    ))
  end

  it "renders the edit destination form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => destinations_path(@destination), :method => "post" do
      assert_select "input#destination_aiport_code", :name => "destination[aiport_code]"
      assert_select "input#destination_airport_name", :name => "destination[airport_name]"
    end
  end
end
