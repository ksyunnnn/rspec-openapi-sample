FactoryBot.define do
  factory :job_seeker_basic_information do
    job_seeker_id { 1 }
    name { Faker::Name.name }
    age { "11" }
  end
end