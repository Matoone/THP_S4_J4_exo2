# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Dog.destroy_all
DogSitter.destroy_all
Stroll.destroy_all
StrollDog.destroy_all
City.destroy_all

cities = [{city_name: "Paris"}, {city_name: "Lyon"}, {city_name: "Bordeaux"}]

cities.each_with_index do |city, index|
  City.create(city)
  puts "#{index + 1} cities created"
end
dogsitters = [{name: "Luke", city: City.all.sample}, {name: "John", city: City.all.sample}, {name: "Elena", city: City.all.sample}]
dogs = [{name: "Fido", city: City.all.sample}, {name: "Milou", city: City.all.sample}, {name: "Rex", city: City.all.sample}]

dogs.each_with_index do |dog, index|
  Dog.create(dog)
  
  puts "#{index + 1} dogs created."
end

dogsitters.each_with_index do |dog_sitter, index|
  DogSitter.create(dog_sitter)
  
  puts "#{index + 1} dog sitter created."
end

now = Time.now
a_day_ago = now - 60 * 60 * 24

random_time = rand(a_day_ago..now)
strolls = [{date: Time.now}, {date: random_time}]

strolls.each_with_index do |stroll, index|
  Stroll.create({date: Time.now, dog_sitter: DogSitter.all.last })
  puts "#{index + 1} strolls created."
end

strolldogs = [{stroll: Stroll.all.last, dog: Dog.all.last}, {stroll: Stroll.all.first, dog: Dog.all.first}, {stroll: Stroll.all.first, dog: Dog.all.last}]

strolldogs.each_with_index do |strolldog, index|
  StrollDog.create(strolldog)
  puts "#{index + 1} strollDogs created."
end

# strolldog1 = StrollDog.create(dog_id: Dog.all, )




