require 'spec_helper'

describe "badges/show.html.slim" do
  before(:each) do
    @badge = assign(:badge, stub_model(Badge,
      :url => "Url",
      :image => "Image"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Url/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Image/)
  end
end
