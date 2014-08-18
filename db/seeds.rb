# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Apartment.create({title: "Beautiful apartment in Paris", description: "2 rooms with beautiful view", city: "Paris", people: 4})
Apartment.create({title: "Family apartment in Paris", description: "4 rooms with beautiful view", city: "Paris", people: 8})
Apartment.create({title: "Beautiful apartment in London", description: "2 rooms with beautiful view", city: "London", people: 4})