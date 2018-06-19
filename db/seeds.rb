# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
url = "https://api.unsplash.com/photos/random?client_id=99c793b7dfddc814120a5c2396eef14ad156c38e454595bb3a1d0baa119954d3"

10.times do
  Picture.create(name: Faker::Name.name)
end
