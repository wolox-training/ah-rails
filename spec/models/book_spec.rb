require 'rails_helper'

describe Book, type: :model do
  subject(:book) do
    Book.new(
      genre: genre, author: author, image: image, title: title, publisher: publisher, year: year
    )
  end

  # Validates that the model validates presence of these parameters
  it do
    should validate_presence_of(:genre)
  end
  it do
    should validate_presence_of(:author)
  end
  it do
    should validate_presence_of(:image)
  end
  it do
    should validate_presence_of(:title)
  end
  it do
    should validate_presence_of(:publisher)
  end
  it do
    should validate_presence_of(:year)
  end

  let(:genre)     { Faker::Book.genre }
  let(:author)    { Faker::Book.author }
  let(:title)     { Faker::Book.title }
  let(:image)     { 'image.png' }
  let(:publisher) { Faker::Book.publisher }
  let(:year)      { Time.current.year }

  # Validations in class must be ok
  it do
    is_expected.to be_valid
  end

  describe '#create' do
    context 'When the genre is nil' do
      let(:genre) { nil }

      it do
        is_expected.to be_invalid
      end
    end

    context 'When the author is nil' do
      let(:author) { nil }

      it do
        is_expected.to be_invalid
      end
    end

    context 'When the image is nil' do
      let(:image) { nil }

      it do
        is_expected.to be_invalid
      end
    end

    context 'When the title is nil' do
      let(:title) { nil }

      it do
        is_expected.to be_invalid
      end
    end

    context 'When the publisher is nil' do
      let(:publisher) { nil }

      it do
        is_expected.to be_invalid
      end
    end

    context 'When the year is nil' do
      let(:year) { nil }

      it do
        is_expected.to be_invalid
      end
    end
  end
end
