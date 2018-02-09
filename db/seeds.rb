# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
 Person.delete_all
 Address.delete_all



  10000.times do
    people = Person.create!(name: Faker::Name.name,
      date_of_brith: Faker::Date.between(4.days.ago, Date.today),
       phone_number: Faker::PhoneNumber.phone_number,
     email: Faker::Internet.email)
    people.reload
    10000.times do
      people.addresses.create!(city: Faker::Address.city, state: Faker::Address.state ,zip: Faker::Address.zip)
       # people.profile.create(name: Faker::Name.first_name , info: Faker::Name.title  , website: Faker::Internet.free_email)
    end
  end

  # people.all.each do |people|
  #       10.times do
  #          people.profile.create(name: Faker::Name.first_name , info: Faker::Name.title  , website: Faker::Internet.free_email)
  #       end
  #     end
