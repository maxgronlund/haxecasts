require 'spec_helper'

describe "flash_files/index.html.slim" do
  before(:each) do
    assign(:flash_files, [
      stub_model(FlashFile,
        :video_cast_id => 1,
        :swf => "Swf"
      ),
      stub_model(FlashFile,
        :video_cast_id => 1,
        :swf => "Swf"
      )
    ])
  end

  it "renders a list of flash_files" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Swf".to_s, :count => 2
  end
end
