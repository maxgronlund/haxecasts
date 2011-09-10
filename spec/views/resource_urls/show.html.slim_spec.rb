require 'spec_helper'

describe "resource_urls/show.html.slim" do
  before(:each) do
    @resource_url = assign(:resource_url, stub_model(ResourceUrl,
      :resource_url => "Resource Url",
      :video_cast_id => 1
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Resource Url/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
  end
end
