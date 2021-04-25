FactoryBot.define do
  factory :golf_course do
    name  { Faker::Lorem.characters(number: 10) }
    address { Faker::Lorem.characters(number: 10) }
  end
end
