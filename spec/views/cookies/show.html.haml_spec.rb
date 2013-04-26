require 'spec_helper'

describe "cookies/show" do
  before(:each) do
    @cookie = assign(:cookie, stub_model(Cookie,
      :rescipe => "Rescipe"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Rescipe/)
  end
end
