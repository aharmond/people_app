# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

15.times do
  person = Person.new
  person.gender = Faker::Gender.type
  if person.gender == "Female"
    person.first_name = Faker::Name.female_first_name
  elsif person.gender == "Male"
    person.first_name = Faker::Name.male_first_name
  else
    person.first_name = Faker::Name.first_name
  end
  person.last_name = Faker::Name.last_name
  person.age = Faker::Number.between(18, 75)
  person.hair_color = Faker::Color.hair_color
  person.eye_color = Faker::Color.eye_color
  person.save!
end
