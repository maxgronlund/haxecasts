require 'spec_helper'

describe "flash_files/show.html.slim" do
  before(:each) do
    @flash_file = assign(:flash_file, stub_model(FlashFile,
      :video_cast_id => 1,
      :swf => "Swf"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Swf/)
  end
end
