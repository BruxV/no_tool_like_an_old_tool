require 'spec_helper'

describe "tools/edit.html.erb" do
  before(:each) do
    @tool = assign(:tool, stub_model(Tool,
      :category_id => 1,
      :make => "MyString",
      :model => "MyString",
      :condition => "MyString",
      :comment => "MyString"
    ))
  end

  it "renders the edit tool form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => tools_path(@tool), :method => "post" do
      assert_select "input#tool_category_id", :name => "tool[category_id]"
      assert_select "input#tool_make", :name => "tool[make]"
      assert_select "input#tool_model", :name => "tool[model]"
      assert_select "input#tool_condition", :name => "tool[condition]"
      assert_select "input#tool_comment", :name => "tool[comment]"
    end
  end
end
