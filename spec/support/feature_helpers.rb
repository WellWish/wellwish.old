module FeatureHelpers
  def sign_in_with(email:, password:)
    visit new_user_session_path
    within "#main" do
      fill_in "Email", with: email
      fill_in "Password", with: password
      click_button "Log in"
    end
  end

  def sign_up_with(email:, password:, password_confirmation: password)
    visit new_user_registration_path
    within "#main" do
      fill_in "Email", with: email
      fill_in "Password", with: password
      fill_in "Password confirmation", with: password_confirmation
      click_button "Sign up"
    end
  end
end
