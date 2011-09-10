require 'spec_helper'

describe "resource_urls/index.html.slim" do
  before(:each) do
    assign(:resource_urls, [
      stub_model(ResourceUrl,
        :resource_url => "Resource Url",
        :video_cast_id => 1
      ),
      stub_model(ResourceUrl,
        :resource_url => "Resource Url",
        :video_cast_id => 1
      )
    ])
  end

  it "renders a list of resource_urls" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Resource Url".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
  end
end
