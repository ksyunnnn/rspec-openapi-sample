FactoryBot.define do
  factory :recruiter do
    email { Faker::Internet.free_email }
  end
end