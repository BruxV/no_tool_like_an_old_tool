require 'spec_helper'

describe "categories/index.html.erb" do
  before(:each) do
    assign(:categories, [
      stub_model(Category,
        :tool_type => "Tool Type",
        :description => "Description"
      ),
      stub_model(Category,
        :tool_type => "Tool Type",
        :description => "Description"
      )
    ])
  end

  it "renders a list of categories" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Tool Type".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Description".to_s, :count => 2
  end
end
