require 'spec_helper'

describe "cookies/new" do
  before(:each) do
    assign(:cookie, stub_model(Cookie,
      :rescipe => "MyString"
    ).as_new_record)
  end

  it "renders new cookie form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", cookies_path, "post" do
      assert_select "input#cookie_rescipe[name=?]", "cookie[rescipe]"
    end
  end
end
