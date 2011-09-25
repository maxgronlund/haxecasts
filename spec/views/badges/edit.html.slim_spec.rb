require 'spec_helper'

describe "badges/edit.html.slim" do
  before(:each) do
    @badge = assign(:badge, stub_model(Badge,
      :url => "MyString",
      :image => "MyString"
    ))
  end

  it "renders the edit badge form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => badges_path(@badge), :method => "post" do
      assert_select "input#badge_url", :name => "badge[url]"
      assert_select "input#badge_image", :name => "badge[image]"
    end
  end
end
