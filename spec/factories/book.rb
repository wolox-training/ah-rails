FactoryBot.define do
  factory :book do
    genre Faker::Book.genre
    author Faker::Book.author
    image Faker::Book.title
    title 'image.png'
    publisher Faker::Book.publisher
    year Time.current.year
  end
end
