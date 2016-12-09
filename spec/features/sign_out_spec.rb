require "rails_helper"

feature "Signing out" do
  scenario "user signs out" do
    create :user, :confirmed, email:                 "joebloggs@email.com",
                              password:              "password",
                              password_confirmation: "password"

    sign_in_with email: "joebloggs@email.com", password: "password"
    click_on "Sign out"
    expect(page).to have_text "Signed out successfully."
  end

  def sign_in_with(email:, password:)
    visit new_user_session_path
    fill_in "Email", with: email
    fill_in "Password", with: password
    click_button "Log in"
  end
end
