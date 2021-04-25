FactoryBot.define do
  factory :user do
    name  { Faker::Lorem.characters(number: 10) }
    name_id { Faker::Lorem.characters(number: 10) }
    email { Faker::Internet.email }
    password { "password" }
    password_confirmation { "password" }
    # is_deleted  {"false" }
    introduction { Faker::Lorem.characters(number: 20) }
  end
end
