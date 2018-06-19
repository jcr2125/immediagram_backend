# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'rest-client'
require 'json'
require_relative 'seed_helper.rb'

api_url = "https://api.unsplash.com/photos/random?client_id=407ce5ac089c78830a87a4481bd6b795a40d8fae43246e06170e7fba23f9a078"

30.times do
  unsplash_data = get_data(api_url)
  create_model(unsplash_data)
end
