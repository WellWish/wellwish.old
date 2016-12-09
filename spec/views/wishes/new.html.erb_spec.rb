require 'rails_helper'

RSpec.describe "wishes/new", type: :view do
  before(:each) do
    assign(:wish, Wish.new(
      :title => "MyString",
      :description => "MyText",
      :criteria => "MyText"
    ))
  end

  it "renders new wish form" do
    render

    assert_select "form[action=?][method=?]", wishes_path, "post" do

      assert_select "input#wish_title[name=?]", "wish[title]"

      assert_select "textarea#wish_description[name=?]", "wish[description]"

      assert_select "textarea#wish_criteria[name=?]", "wish[criteria]"
    end
  end
end
