require 'spec_helper'

describe "FlashFiles" do
  describe "GET /flash_files" do
    it "works! (now write some real specs)" do
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
      get flash_files_path
      response.status.should be(200)
    end
  end
end
