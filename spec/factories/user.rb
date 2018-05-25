FactoryBot.define do
  factory :user do
    uid Faker::Internet.email
    email Faker::Internet.email
    provider 'email'
    password 'test1234'
    password_confirmation 'test1234'
    first_name Faker::Name.first_name
    last_name Faker::Name.last_name
  end
end
