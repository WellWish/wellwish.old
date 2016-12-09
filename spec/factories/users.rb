FactoryGirl.define do
  factory :user, aliases: [:unconfirmed_user] do
    username "JoeBloggs"
    email "joebloggs@email.com"
    password "password"
    password_confirmation "password"

    trait :confirmed do
      confirmed_at Date.current
    end
  end
end
