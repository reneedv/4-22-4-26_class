require 'spec_helper'

describe "cookies/edit" do
  before(:each) do
    @cookie = assign(:cookie, stub_model(Cookie,
      :rescipe => "MyString"
    ))
  end

  it "renders the edit cookie form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", cookie_path(@cookie), "post" do
      assert_select "input#cookie_rescipe[name=?]", "cookie[rescipe]"
    end
  end
end
