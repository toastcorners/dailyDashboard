# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.destroy_all

user1 = User.create(name: "Melissa", birthday: "08/19/1989", city: "Brooklyn")
user2 = User.create(name: "Urgen", birthday: "07/28/1995", city: "Queens")
user3 = User.create(name: "Bob", birthday: "01/28/1958", city: "Baltimore", bio: "I'm Bob")
user4 = User.create(name: "Tim", birthday: "09/18/1997", city: "Phoenix")


