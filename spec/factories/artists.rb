FactoryGirl.define do
  factory :artist do
    name { Faker::Person.name }
    image_url { Faker::Image.image_url }
  end
end
