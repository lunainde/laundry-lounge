# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
# Machine.create(user_id: 1, machine_type: "Washer & Dryer", business_type: "Cafe", location: "Märkisches Ufer 22, 10179 Berlin", business_name: "Café Re", price: 5.9)
# Machine.create(user_id: 2, machine_type: "Washer & Dryer", business_type: "Cafe", location: "Fasanenstraße 23, 10719 Berlin", business_name: "Literaturcafé", price: 6.9)
# Machine.create(user_id: 2, machine_type: "Washer & Dryer", business_type: "Cafe", location: "Mommsenstraße 4, 10629 Berlin", business_name: "Espressobar", price: 6.9)
# Machine.create(user_id: 2, machine_type: "Washer & Dryer", business_type: "Cafe", location: "Bergstraße 68, 10115 Berlin", business_name: "Distrikt coffee", price: 6.9)
# Machine.create(user_id: 2, machine_type: "Washer & Dryer", business_type: "Cafe", location: "Lehrter Str. 26A, 10557 Berlin", business_name: "Ein Moment", price: 6.9)

# VALIDATIONS
# validates :business_name, :business_type, :location, :machine_type, :price, presence: true
# validates :business_type, inclusion: { in: ["Cafe", "Bar", "Gym", "Shopping Mall", "Coworking Space", "University & Library", "Other"]}
# validates :machine_type, inclusion: { in: ["Washer", "Dryer", "Washer & Dryer"]}
