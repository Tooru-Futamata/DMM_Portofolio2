FactoryBot.define do
  factory :golf_course do
    name  { Faker::Lorem.characters(number:10) }
    region_id { Faker::Lorem.characters(number:10) }
    prefecture_id { Faker::Lorem.characters(number:10) }
    address  { Faker::Lorem.characters(number:10) }
    image_id { Faker::Lorem.characters(number:10) }
  end
end
