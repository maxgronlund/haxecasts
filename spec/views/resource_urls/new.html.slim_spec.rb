require 'spec_helper'

describe "resource_urls/new.html.slim" do
  before(:each) do
    assign(:resource_url, stub_model(ResourceUrl,
      :resource_url => "MyString",
      :video_cast_id => 1
    ).as_new_record)
  end

  it "renders new resource_url form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => resource_urls_path, :method => "post" do
      assert_select "input#resource_url_resource_url", :name => "resource_url[resource_url]"
      assert_select "input#resource_url_video_cast_id", :name => "resource_url[video_cast_id]"
    end
  end
end
