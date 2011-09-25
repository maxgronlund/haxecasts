require 'spec_helper'

describe "badges/index.html.slim" do
  before(:each) do
    assign(:badges, [
      stub_model(Badge,
        :url => "Url",
        :image => "Image"
      ),
      stub_model(Badge,
        :url => "Url",
        :image => "Image"
      )
    ])
  end

  it "renders a list of badges" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Url".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Image".to_s, :count => 2
  end
end
