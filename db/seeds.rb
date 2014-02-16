# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

manufacturers = Manufacturer.create([{ name: 'Manufacturer One' }, { name: 'Manufacturer Two' }, { name: 'Manufacturer Three' } ])

Bat.create( name: "Bat one", manufacturer_id: 1 )
Bat.create( name: "Bat two", manufacturer_id: 1 )
Bat.create( name: "Bat three", manufacturer_id: 1 )

Bat.create( name: "Bat four", manufacturer_id: 2 )
Bat.create( name: "Bat five", manufacturer_id: 2 )
Bat.create( name: "Bat six", manufacturer_id: 2 )

Bat.create( name: "Bat seven", manufacturer_id: 3 )
Bat.create( name: "Bat eight", manufacturer_id: 3 )
Bat.create( name: "Bat nine", manufacturer_id: 3 )