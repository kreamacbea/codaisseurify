FactoryGirl.define do
  factory :song do
    title { Faker::Title.title }
  end
end
