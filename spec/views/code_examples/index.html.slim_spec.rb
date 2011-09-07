require 'spec_helper'

describe "code_examples/index.html.slim" do
  before(:each) do
    assign(:code_examples, [
      stub_model(CodeExample,
        :title => "Title",
        :body => "MyText"
      ),
      stub_model(CodeExample,
        :title => "Title",
        :body => "MyText"
      )
    ])
  end

  it "renders a list of code_examples" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Title".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
  end
end
