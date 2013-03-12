require 'spec_helper'

describe "destinations/new" do
  before(:each) do
    assign(:destination, stub_model(Destination,
      :aiport_code => "MyString",
      :airport_name => "MyString"
    ).as_new_record)
  end

  it "renders new destination form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => destinations_path, :method => "post" do
      assert_select "input#destination_aiport_code", :name => "destination[aiport_code]"
      assert_select "input#destination_airport_name", :name => "destination[airport_name]"
    end
  end
end
