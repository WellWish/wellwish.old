require "rails_helper"

RSpec.describe "wishes/edit", type: :view do
  before(:each) do
    @wish = assign(:wish, Wish.create!(
                            title: "MyString",
                            description: "MyText",
                            criteria: "MyText",
    ))
  end

  it "renders the edit wish form" do
    render

    assert_select "form[action=?][method=?]", wish_path(@wish), "post" do
      assert_select "input#wish_title[name=?]", "wish[title]"

      assert_select "textarea#wish_description[name=?]", "wish[description]"

      assert_select "textarea#wish_criteria[name=?]", "wish[criteria]"
    end
  end
end
