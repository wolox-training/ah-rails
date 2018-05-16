FactoryBot.define do
  factory :book do
    #   let(:genre)     { Faker::Book.genre }
    #   let(:author)    { Faker::Book.author }
    #   let(:title)     { Faker::Book.title }
    #   let(:image)     { 'image.png' }
    #   let(:publisher) { Faker::Book.publisher }
    #   let(:year)      { Date.today.year }
    genre 'Literatura fantastica'
    author 'J.R.R. Tolkien'
    image 'image.png'
    title 'El Senor de los Anillos'
    publisher 'George Allen'
    year '1954'
  end
end
