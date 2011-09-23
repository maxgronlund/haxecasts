require 'spec_helper'

describe "flash_files/edit.html.slim" do
  before(:each) do
    @flash_file = assign(:flash_file, stub_model(FlashFile,
      :video_cast_id => 1,
      :swf => "MyString"
    ))
  end

  it "renders the edit flash_file form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => flash_files_path(@flash_file), :method => "post" do
      assert_select "input#flash_file_video_cast_id", :name => "flash_file[video_cast_id]"
      assert_select "input#flash_file_swf", :name => "flash_file[swf]"
    end
  end
end
