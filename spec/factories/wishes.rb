FactoryGirl.define do
  factory :wish do
    user
    title "MyTitle"
    description "MyDescription"
    criteria "MyCriteria"
  end
end
