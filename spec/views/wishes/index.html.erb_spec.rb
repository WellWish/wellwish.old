require "rails_helper"

RSpec.describe "wishes/index", type: :view do
  before(:each) do
    assign(:wishes, [
             Wish.create!(
               title: "Title",
               description: "DescriptionText",
               criteria: "CriteriaText",
             ),
             Wish.create!(
               title: "Title",
               description: "DescriptionText",
               criteria: "CriteriaText",
             ),
           ])
  end

  it "renders a list of wishes" do
    render
    assert_select "tr>td", text: "Title".to_s, count: 2
    assert_select "tr>td", text: "DescriptionText".to_s, count: 2
    assert_select "tr>td", text: "CriteriaText".to_s, count: 2
  end
end
