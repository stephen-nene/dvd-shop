require 'faker'

# Create 10 movies
10.times do
  Movie.create!(
    title: Faker::Movie.title,
    year: Faker::Number.between(from: 1970, to: 2022),
    length: Faker::Number.between(from: 60, to: 240),
    director: Faker::Name.name,
    description: Faker::Movies::VForVendetta.speech,
    poster_url: Faker::Internet.url,
    category: Faker::Book.genre,
    discount: Faker::Boolean.boolean(true_ratio: 0.3),
    female_director: Faker::Boolean.boolean(true_ratio: 0.2),
  )
end
