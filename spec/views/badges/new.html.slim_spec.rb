require 'spec_helper'

describe "badges/new.html.slim" do
  before(:each) do
    assign(:badge, stub_model(Badge,
      :url => "MyString",
      :image => "MyString"
    ).as_new_record)
  end

  it "renders new badge form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => badges_path, :method => "post" do
      assert_select "input#badge_url", :name => "badge[url]"
      assert_select "input#badge_image", :name => "badge[image]"
    end
  end
end
