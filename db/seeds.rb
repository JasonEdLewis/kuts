# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


jason = Barber.create(name: "jason", specialty: "fade", hours: 7, location: "Bronx")


bill = Client.create(name: "Bill", gender: "male", style: "fade")

Appoint.create(client: bill, barber: jason, time: 2, style: "fade")