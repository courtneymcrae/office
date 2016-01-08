Room.destroy_all

rooms = Room.create([
      {address: "123 Pico", price: "12000", summary: "A office building located in the heart of Downtown Santa Monica."}
    ])

users = User.create([
	{name: "Courtney", email: "courtneymcrae@gmail.com", }
	])


#user.email = "courtney@airoffice.com"



# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
