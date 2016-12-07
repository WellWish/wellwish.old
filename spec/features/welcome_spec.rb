require "rails_helper"

feature "Welcome page", type: :feature do
  scenario "User visits the welcome page" do
    visit "/"

    expect(page).to have_text "WellWish"
  end
end
