#this file is good for generating a whole bunch of data
20.times do
  Car.create(make: ['Jeep', 'Toyota', 'Ford'].sample, 
    #these are from Faker gem
    model: Faker::Vehicle.manufacture,
    color: Faker::Color.color_name,
    year: Faker::Number.between(1990, 2017).to_s,
    runs: Faker::Boolean.boolean
  )
end

puts "Cars seeded, there are now #{Car.count} cars in the database"

#run db:seed to see this is working