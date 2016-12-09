require "rails_helper"

feature "Signing up" do
  context "when email and password are valid" do
    scenario "user is notified that a confirmation email has been sent" do
      sign_up_with email: "joebloggs@email.com", password: "password"
      expect(page).to have_text(
        "A message with a confirmation link has been sent",
      )
    end
  end

  context "when email is taken" do
    scenario "user is notified that the email address is taken" do
      create :user, :confirmed, email:                 "joebloggs@email.com",
                                password:              "password",
                                password_confirmation: "password"

      sign_up_with email: "joebloggs@email.com", password: "password"
      expect(page).to have_text "Email has already been taken"
    end
  end

  context "when email is invalid" do
    scenario "user is notified that the email is invalid" do
      sign_up_with email: "derp", password: "password"
      expect(page).to have_text "Email is invalid"
    end
  end

  context "when password and password confirmation don't match" do
    scenario "user is notified that the passwords don't match" do
      sign_up_with email: "joebloggs@email.com",
                   password: "password",
                   password_confirmation: "drowssap"
      expect(page).to have_text "Password confirmation doesn't match"
    end
  end

  def sign_up_with(email:, password:, password_confirmation: password)
    visit new_user_registration_path
    fill_in "Email", with: email
    fill_in "Password", with: password
    fill_in "Password confirmation", with: password_confirmation
    click_button "Sign up"
  end
end
