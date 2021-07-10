FactoryBot.define do
  factory :company do
    name { Faker::Company.name }
    address { Faker::Address.street_address }
    tel { Faker::PhoneNumber.cell_phone }
  end
end