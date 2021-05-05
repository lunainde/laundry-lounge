# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Machine.create(user_id: 1, machine_type: "Washer", business_type: "Cafe", location: "Märkisches Ufer 22, 10179 Berlin", business_name: "Café Re", price: 5.9)
Machine.create(user_id: 2, machine_type: "Washer", business_type: "Cafe", location: "Fasanenstraße 23, 10719 Berlin", business_name: "Literaturcafé", price: 6.9)
Machine.create(user_id: 2, machine_type: "Dryer", business_type: "Cafe", location: "Mommsenstraße 4, 10629 Berlin", business_name: "Espressobar", price: 6.9)
Machine.create(user_id: 2, machine_type: "Washer & Dryer", business_type: "Cafe", location: "Lehrter Str. 26A, 10557 Berlin", business_name: "Ein Moment", price: 6.9)
Machine.create(user_id: 2, machine_type: "Washer", business_type: "Bar", location: "Mommsenstraße 61, 10629 Berlin", business_name: "AbsetzBar", price: 6.9)
Machine.create(user_id: 2, machine_type: "Dryer", business_type: "Bar", location: "Knesebeckstraße 67, 10623 Berlin", business_name: "The Fox Bar", price: 6.9)
Machine.create(user_id: 1, machine_type: "Washer & Dryer", business_type: "Bar", location: "Potsdamer Platz 3, 10785 Berlin", business_name: "The Curtain Club", price: 5.9)
Machine.create(user_id: 2, machine_type: "Dryer", business_type: "Bar", location: "Torstraße 133, 10119 Berlin", business_name: "BonBon Bar Berlin", price: 6.9)
Machine.create(user_id: 2, machine_type: "Washer", business_type: "Gym", location: "Hermannplatz 10, 10967 Berlin", business_name: "American Fitness", price: 6.9)
Machine.create(user_id: 2, machine_type: "Washer", business_type: "Gym", location: "Tempelhofer Ufer 36, 10963 Berlin", business_name: "Urban Gladiator", price: 6.9)
Machine.create(user_id: 2, machine_type: "Dryer", business_type: "Gym", location: "Chausseestraße 51, 10115 Berlin", business_name: "Slim-Gym Club Mitte", price: 6.9)
Machine.create(user_id: 2, machine_type: "Washer", business_type: "Gym", location: "Karl-Marx-Allee 110, 10243 Berlin", business_name: "BODY STREET", price: 6.9)
Machine.create(user_id: 2, machine_type: "Washer & Dryer", business_type: "Shopping Mall", location: "Leipziger Pl. 12, 10117 Berlin", business_name: "Mall of Berlin", price: 6.9)
Machine.create(user_id: 2, machine_type: "Washer", business_type: "Shopping Mall", location: "Budapester Str. 38-50, 10787 Berlin", business_name: "Bikini Berlin", price: 6.9)
Machine.create(user_id: 1, machine_type: "Washer", business_type: "Shopping Mall", location: "Alte Potsdamer Str. 7, 10785 Berlin", business_name: "Potsdamer Platz Arkaden", price: 5.9)
Machine.create(user_id: 2, machine_type: "Washer", business_type: "Coworking Spaces", location: "Friedrichstraße 68, 10117 Berlin", business_name: "Mindspace", price: 6.9)
Machine.create(user_id: 2, machine_type: "Dryer", business_type: "Coworking Spaces", location: "Oldenburger Str. 6, 10551 Berlin", business_name: "House of Clouds", price: 6.9)
Machine.create(user_id: 2, machine_type: "Washer", business_type: "Coworking Space", location: "Dresdener Str. 36, 10179 Berlin", business_name: "D36 CO:WORKING", price: 6.9)
Machine.create(user_id: 2, machine_type: "Washer", business_type: "Universities", location: "Bundesallee 1-12, 10719 Berlin", business_name: "Universität der Künste", price: 6.9)
Machine.create(user_id: 2, machine_type: "Washer", business_type: "Universities", location: "Hardenbergstraße 36, 10623 Berlin", business_name: "Technische Universität Berlin", price: 6.9)
Machine.create(user_id: 2, machine_type: "Washer & Dryer", business_type: "Universities", location: "Matthäikirchplatz 6, 10785 Berlin", business_name: "Kunstbibliothek Berlin", price: 6.9)

# VALIDATIONS
# validates :business_name, :business_type, :location, :machine_type, :price, presence: true
# validates :business_type, inclusion: { in: ["Cafe", "Bar", "Gym", "Shopping Mall", "Coworking Space", "University & Library", "Other"]}
# validates :machine_type, inclusion: { in: ["Washer", "Dryer", "Washer & Dryer"]}
