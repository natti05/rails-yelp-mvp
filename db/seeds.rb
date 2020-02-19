require 'faker'

puts 'Creating 10 fake restaurants...'
10.times do
  Restaurant.create!(
    name:   Faker::Space.galaxy,
    address: Faker::Address.street_address,
    phone_number: Faker::PhoneNumber.phone_number,
    category: Restaurant::NAME.sample
  )
end
puts 'Finished!'
