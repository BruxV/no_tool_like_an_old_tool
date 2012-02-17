require 'spec_helper'

describe "tools/index.html.erb" do
  before(:each) do
    assign(:tools, [
      stub_model(Tool,
        :category_id => 1,
        :make => "Make",
        :model => "Model",
        :condition => "Condition",
        :comment => "Comment"
      ),
      stub_model(Tool,
        :category_id => 1,
        :make => "Make",
        :model => "Model",
        :condition => "Condition",
        :comment => "Comment"
      )
    ])
  end

  it "renders a list of tools" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Make".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Model".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Condition".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Comment".to_s, :count => 2
  end
end
