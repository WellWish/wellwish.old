require "rails_helper"

feature "Welcome page" do
  scenario "user visits the welcome page" do
    visit root_path

    expect(page).to have_text "WellWish"
  end
end
