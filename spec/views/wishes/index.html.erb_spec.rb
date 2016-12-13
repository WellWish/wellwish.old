require "rails_helper"

RSpec.describe "wishes/index", type: :view do
  before(:each) do
    assign :wishes, [create(:wish), create(:wish)]
  end

  it "renders a list of wishes" do
    render
    assert_select "tr>td", text: "MyTitle".to_s, count: 2
    assert_select "tr>td", text: "MyDescription".to_s, count: 2
    assert_select "tr>td", text: "MyCriteria".to_s, count: 2
  end
end
