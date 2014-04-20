require 'spec_helper'

describe "timelines/edit" do
  before(:each) do
    @timeline = assign(:timeline, stub_model(Timeline,
      :name => "MyString",
      :user_id => 1
    ))
  end

  it "renders the edit timeline form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", timeline_path(@timeline), "post" do
      assert_select "input#timeline_name[name=?]", "timeline[name]"
      assert_select "input#timeline_user_id[name=?]", "timeline[user_id]"
    end
  end
end
