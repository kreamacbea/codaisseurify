FactoryGirl.define do
  factory :artist do
    name { Faker::Person }
    image_url { Faker::Image }
  end
end
