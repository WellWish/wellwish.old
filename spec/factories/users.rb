FactoryGirl.define do
  factory :user, aliases: [:confirmed_user] do
    sequence(:username) { |n| "JoeBloggs#{n}" }
    email { "#{username.downcase}@email.com" }

    password "password"
    password_confirmation "password"
    confirmed_at Date.current

    factory :unconfirmed_user do
      confirmed_at nil
    end
  end
end
