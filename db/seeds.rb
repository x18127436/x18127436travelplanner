# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

user = User.new(
  #id: 1,
  name: "x18127436",
  email: "x18127436@student.ncirl.ie"

)
user.save!

user = User.new(
  #id: 1,
  name: "Administrator",
  email: "Administrator@Administrator.com"

)
user.save!