FactoryBot.define do
  factory :post do
    title { Faker::Lorem.characters(number: 10) }
    content { Faker::Lorem.characters(number: 200) }
    rate { Faker::Lorem.characters(number: 5) }
  end
end
