require 'spec_helper'

describe "timelines/show" do
  before(:each) do
    @timeline = assign(:timeline, stub_model(Timeline,
      :name => "Name",
      :user_id => 1
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name/)
    rendered.should match(/1/)
  end
end