# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'

User.create(uid: 'alfo704@gmail.com', provider: 'email', email: 'alfo704@gmail.com',
            password: 'test1234', password_confirmation: 'test1234', first_name: 'Test',
            last_name: 'TestLastName')

100.times do
  Book.create(genre: Faker::Book.genre, author: Faker::Book.author, image: 'image.png',
              title: Faker::Book.title, publisher: Faker::Book.publisher, year: Time.current.year)
end
