# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Machine.create(user_id: 1, machine_type: "washing", business_type: "cafe", location: "Berlin", business_name: "Cafe1", price: 5.9)
Machine.create(user_id: 2, machine_type: "washing", business_type: "cafe", location: "Berlin", business_name: "Cafe2", price: 6.9)
