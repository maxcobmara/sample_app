require 'spec_helper'

describe "destinations/show" do
  before(:each) do
    @destination = assign(:destination, stub_model(Destination,
      :aiport_code => "Aiport Code",
      :airport_name => "Airport Name"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Aiport Code/)
    rendered.should match(/Airport Name/)
  end
end
