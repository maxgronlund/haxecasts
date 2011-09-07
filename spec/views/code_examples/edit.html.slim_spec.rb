require 'spec_helper'

describe "code_examples/edit.html.slim" do
  before(:each) do
    @code_example = assign(:code_example, stub_model(CodeExample,
      :title => "MyString",
      :body => "MyText"
    ))
  end

  it "renders the edit code_example form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => code_examples_path(@code_example), :method => "post" do
      assert_select "input#code_example_title", :name => "code_example[title]"
      assert_select "textarea#code_example_body", :name => "code_example[body]"
    end
  end
end
