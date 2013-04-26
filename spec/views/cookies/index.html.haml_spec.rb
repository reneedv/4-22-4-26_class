require 'spec_helper'

describe "cookies/index" do
  before(:each) do
    assign(:cookies, [
      stub_model(Cookie,
        :rescipe => "Rescipe"
      ),
      stub_model(Cookie,
        :rescipe => "Rescipe"
      )
    ])
  end

  it "renders a list of cookies" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Rescipe".to_s, :count => 2
  end
end
