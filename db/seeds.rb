# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

machines = Machine.all
machines.each do |machine|
    machine.destroy
end
puts "all machines destroyed"
puts "now new machiens will be created"

Machine.create(user_id: 1, machine_type: "Washer", business_type: "Cafe", location: "Märkisches Ufer 22, 10179 Berlin", business_name: "Café Re", price: 5.9, img: "https://images.unsplash.com/photo-1509042239860-f550ce710b93?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1268&q=80")
Machine.create(user_id: 2, machine_type: "Washer", business_type: "Cafe", location: "Fasanenstraße 23, 10719 Berlin", business_name: "Literaturcafé", price: 6.9, img: "https://images.unsplash.com/photo-1551879354-08d397325b44?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=2551&q=80")
Machine.create(user_id: 2, machine_type: "Dryer", business_type: "Cafe", location: "Mommsenstraße 4, 10629 Berlin", business_name: "Espressobar", price: 6.9, img: "https://images.unsplash.com/photo-1576670392954-38b1fdb78b1d?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1700&q=80")
Machine.create(user_id: 2, machine_type: "Washer & Dryer", business_type: "Cafe", location: "Lehrter Str. 26A, 10557 Berlin", business_name: "Ein Moment", price: 6.9, img:"https://images.unsplash.com/photo-1445116572660-236099ec97a0?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=2551&q=80")
Machine.create(user_id: 2, machine_type: "Washer", business_type: "Bar", location: "Mommsenstraße 61, 10629 Berlin", business_name: "AbsetzBar", price: 6.9, img: "https://images.unsplash.com/photo-1598373187432-c1ff06874ce8?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1693&q=80")
Machine.create(user_id: 2, machine_type: "Dryer", business_type: "Bar", location: "Knesebeckstraße 67, 10623 Berlin", business_name: "The Fox Bar", price: 6.9, img: "https://images.unsplash.com/photo-1611603308770-cf1abd45c9de?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1700&q=80")
Machine.create(user_id: 1, machine_type: "Washer & Dryer", business_type: "Bar", location: "Potsdamer Platz 3, 10785 Berlin", business_name: "The Curtain Club", price: 5.9, img: "https://images.unsplash.com/photo-1561113275-a9733993bd5e?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1700&q=80")
Machine.create(user_id: 2, machine_type: "Dryer", business_type: "Bar", location: "Torstraße 133, 10119 Berlin", business_name: "BonBon Bar Berlin", price: 6.9, img: "https://images.unsplash.com/photo-1453824979084-c8fd42932378?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1700&q=80")
Machine.create(user_id: 2, machine_type: "Washer", business_type: "Gym", location: "Hermannplatz 10, 10967 Berlin", business_name: "American Fitness", price: 6.9, img: "https://images.unsplash.com/photo-1609899537878-88d5ba429bdb?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1234&q=80")
Machine.create(user_id: 2, machine_type: "Washer", business_type: "Gym", location: "Tempelhofer Ufer 36, 10963 Berlin", business_name: "Urban Gladiator", price: 6.9, img:"https://images.unsplash.com/photo-1540497077202-7c8a3999166f?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=2850&q=80")
Machine.create(user_id: 2, machine_type: "Dryer", business_type: "Gym", location: "Chausseestraße 51, 10115 Berlin", business_name: "Slim-Gym Club Mitte", price: 6.9, img: "https://images.unsplash.com/photo-1603665409265-bdc00027c217?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1275&q=80")
Machine.create(user_id: 2, machine_type: "Washer", business_type: "Gym", location: "Karl-Marx-Allee 110, 10243 Berlin", business_name: "BODY STREET", price: 6.9, img: "https://images.unsplash.com/photo-1548933901-7b1336858145?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=864&q=80")
Machine.create(user_id: 2, machine_type: "Washer & Dryer", business_type: "Shopping Mall", location: "Leipziger Pl. 12, 10117 Berlin", business_name: "Mall of Berlin", price: 6.9, img: "https://images.unsplash.com/photo-1583594454973-4ddbab9dfd0e?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1602&q=80")
Machine.create(user_id: 2, machine_type: "Washer", business_type: "Shopping Mall", location: "Budapester Str. 38-50, 10787 Berlin", business_name: "Bikini Berlin", price: 6.9, img: "https://images.unsplash.com/photo-1591389758843-5bc5d4625e66?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1234&q=80")
Machine.create(user_id: 1, machine_type: "Washer", business_type: "Shopping Mall", location: "Alte Potsdamer Str. 7, 10785 Berlin", business_name: "Potsdamer Platz Arkaden", price: 5.9, img: "https://images.unsplash.com/photo-1527192491265-7e15c55b1ed2?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1650&q=80")
Machine.create(user_id: 2, machine_type: "Washer", business_type: "Coworking Spaces", location: "Friedrichstraße 68, 10117 Berlin", business_name: "Mindspace", price: 6.9, img: "https://images.unsplash.com/photo-1485217988980-11786ced9454?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1650&q=80")
Machine.create(user_id: 2, machine_type: "Dryer", business_type: "Coworking Spaces", location: "Oldenburger Str. 6, 10551 Berlin", business_name: "House of Clouds", price: 6.9, img: "https://images.unsplash.com/photo-1516534775068-ba3e7458af70?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1650&q=80")
Machine.create(user_id: 2, machine_type: "Washer", business_type: "Coworking Spaces", location: "Dresdener Str. 36, 10179 Berlin", business_name: "D36 CO:WORKING", price: 6.9, img: "https://images.unsplash.com/photo-1580537659466-0a9bfa916a54?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1234&q=80")
Machine.create(user_id: 2, machine_type: "Washer", business_type: "Universities", location: "Bundesallee 1-12, 10719 Berlin", business_name: "Universität der Künste", price: 6.9, img: "https://images.unsplash.com/photo-1572097560317-1189048dac38?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1575&q=80")
Machine.create(user_id: 2, machine_type: "Washer", business_type: "Universities", location: "Hardenbergstraße 36, 10623 Berlin", business_name: "Technische Universität Berlin", price: 6.9, img:"https://images.unsplash.com/photo-1567421480160-b51a53aeb0d5?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1575&q=80")
Machine.create(user_id: 2, machine_type: "Washer & Dryer", business_type: "Universities", location: "Matthäikirchplatz 6, 10785 Berlin", business_name: "Kunstbibliothek Berlin", price: 6.9, img: "https://images.unsplash.com/photo-1585779034823-7e9ac8faec70?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1575&q=80")

# VALIDATIONS
# validates :business_name, :business_type, :location, :machine_type, :price, presence: true
# validates :business_type, inclusion: { in: ["Cafe", "Bar", "Gym", "Shopping Mall", "Coworking Space", "University & Library", "Other"]}
# validates :machine_type, inclusion: { in: ["Washer", "Dryer", "Washer & Dryer"]}
