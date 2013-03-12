require 'spec_helper'

describe "destinations/index" do
  before(:each) do
    assign(:destinations, [
      stub_model(Destination,
        :aiport_code => "Aiport Code",
        :airport_name => "Airport Name"
      ),
      stub_model(Destination,
        :aiport_code => "Aiport Code",
        :airport_name => "Airport Name"
      )
    ])
  end

  it "renders a list of destinations" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Aiport Code".to_s, :count => 2
    assert_select "tr>td", :text => "Airport Name".to_s, :count => 2
  end
end
