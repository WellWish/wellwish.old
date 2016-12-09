require 'rails_helper'

RSpec.describe "wishes/index", type: :view do
  before(:each) do
    assign(:wishes, [
      Wish.create!(
        :title => "Title",
        :description => "MyText",
        :criteria => "MyText"
      ),
      Wish.create!(
        :title => "Title",
        :description => "MyText",
        :criteria => "MyText"
      )
    ])
  end

  it "renders a list of wishes" do
    render
    assert_select "tr>td", :text => "Title".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
  end
end
