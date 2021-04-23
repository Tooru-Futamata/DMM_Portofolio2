FactoryBot.define do
  factory :post do
    content  { Faker::Lorem.characters(number: 200) }
    rate { Faker::Lorem.characters(number: 5) }
  end
end
