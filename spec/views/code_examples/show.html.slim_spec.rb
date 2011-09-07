require 'spec_helper'

describe "code_examples/show.html.slim" do
  before(:each) do
    @code_example = assign(:code_example, stub_model(CodeExample,
      :title => "Title",
      :body => "MyText"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Title/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/MyText/)
  end
end
