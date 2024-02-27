# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

puts "Creating restaurants..."
bluemarlin = {name: 'Marlin', address: 'Lungomare, Levanto', phone_number: '0488452781', category: 'italian'}
settimocielo = {name: 'settimociel', address: 'via roma, Spezia', phone_number: '0433284284', category: 'italian'}
hochi_mama = {name: 'Hochimama', address: 'swanson street, Richmond', phone_number: '044252552', category: 'japanese'}
captain_baxter = {name: 'Captain baxter', address: 'st kilda beach, Melbourne', phone_number: '047584883',category: 'belgian'}
pazzi = {name: 'pazzimelbourne', address: 'central, Melbourne', phone_number: '046717387', category: 'french'}

[bluemarlin, settimocielo, hochi_mama, captain_baxter, pazzi].each do |attributes|
  restaurant = Restaurant.create!(attributes)
  puts "Created #{restaurant.name}"
end
puts "Finished!"
