# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)



json = ActiveSupport::JSON.decode(File.read('db/seeds/city.list.json'))
json.each do |a|

  print "Seeding #{a["name"]} ...\n"
  City.create!(name: a['name'],country: a['country'],city_id: a['id'] ,latitude: a['coord']['lat'],longitude: a['coord']['lon'])
end