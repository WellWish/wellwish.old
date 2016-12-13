require "rails_helper"

feature "Signing in" do
  context "when confirmed user with valid email and password" do
    scenario "user is logged in" do
      create :confirmed_user, email:                 "joebloggs@email.com",
                              password:              "password",
                              password_confirmation: "password"

      sign_in_with email: "joebloggs@email.com", password: "password"
      expect(page).to have_text "WellWish"
    end
  end

  context "when unconfirmed user with valid email and password" do
    scenario "user is notified they have to confirm their email address" do
      create :unconfirmed_user, email:                 "joebloggs@email.com",
                                password:              "password",
                                password_confirmation: "password"

      sign_in_with email: "joebloggs@email.com", password: "password"
      expect(page).to have_text "You have to confirm your email address"
    end
  end
end
