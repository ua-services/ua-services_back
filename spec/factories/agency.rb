FactoryBot.define do
  factory :agency do
    name { Faker::Company.unique.name }
    address { Faker::Address.full_address }
    phone_number { Faker::PhoneNumber.cell_phone }
    service_industry { Faker::Company.industry }
    email { Faker::Internet.unique.email }
    description { Faker::Company.catch_phrase }
    lng { Faker::Address.longitude }
    lat { Faker::Address.latitude }
  end
end
