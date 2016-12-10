require "rails_helper"

RSpec.describe "wishes/show", type: :view do
  before(:each) do
    @wish = create :wish
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/MyTitle/)
    expect(rendered).to match(/MyDescription/)
    expect(rendered).to match(/MyCriteria/)
  end
end
