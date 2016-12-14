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
      create :user, email: "joebloggs@email.com", password: "password"

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
end
