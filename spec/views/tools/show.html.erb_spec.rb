require 'spec_helper'

describe "tools/show.html.erb" do
  before(:each) do
    @tool = assign(:tool, stub_model(Tool,
      :category_id => 1,
      :make => "Make",
      :model => "Model",
      :condition => "Condition",
      :comment => "Comment"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Make/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Model/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Condition/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Comment/)
  end
end
