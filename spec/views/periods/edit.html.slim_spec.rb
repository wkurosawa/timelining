require 'spec_helper'

describe "periods/edit" do
  before(:each) do
    @period = assign(:period, stub_model(Period,
      :name => "MyString",
      :timeline_id => 1
    ))
  end

  it "renders the edit period form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", period_path(@period), "post" do
      assert_select "input#period_name[name=?]", "period[name]"
      assert_select "input#period_timeline_id[name=?]", "period[timeline_id]"
    end
  end
end
