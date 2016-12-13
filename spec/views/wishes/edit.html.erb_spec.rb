require "rails_helper"

RSpec.describe "wishes/edit", type: :view do
  let(:wish) { create :wish }

  before(:each) do
    @wish = wish
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
