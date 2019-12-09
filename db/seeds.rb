# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'faker'

puts "Cleaning db..."

Mission.destroy_all
Place.destroy_all
User.destroy_all


puts "Starting seeds..."

puts "Creating users seeds ..."

maylis = User.create!(
  email: "maylis@example.com",
  password: "password",
  first_name: "Maylis",
  last_name: "Castell",
  username: "Lyly",
  # address: "10 rue Voltaire",
  points: 10,
  level: "rookie",
  city: "Nantes",
  zip_code: "44000",
  country: "France",
  avatar: File.open(Rails.root.join("db/fixtures/avatars/maylis_avatar.png"))
)

marie_noelle = User.create!(
  email: "marie_noelle@example.com",
  password: "password",
  first_name: "Marie-Noëlle",
  last_name: "Fromage",
  username: "Mawie",
  # address: "41 boulevard de Verdun",
  points: 40,
  level: "apprentice",
  city: "Rennes",
  zip_code: "35000",
  country: "France",
  avatar: File.open(Rails.root.join("db/fixtures/avatars/marie_noelle_avatar.png"))
)

ophelie = User.create!(
  email: "ophelie@example.com",
  password: "password",
  first_name: "Ophélie",
  last_name: "Cauchye",
  username: "Ophé",
  # address: "3 Rue du Président Édouard Herriot",
  points: 81,
  level: "champion",
  city: "Lyon",
  zip_code: "69001",
  country: "France",
  avatar: File.open(Rails.root.join("db/fixtures/avatars/ophe_avatar.png"))
)

cecile = User.create!(
  email: "cecile@example.com",
  password: "password",
  first_name: "Cécile",
  last_name: "Veneziani",
  username: "Cécé",
  # address: "7 place du Marché aux Fleurs",
  points: 31,
  level: "apprentice",
  city: "Montpellier",
  zip_code: "34000",
  country: "France",
  avatar: File.open(Rails.root.join("db/fixtures/avatars/cecile_avatar.png"))
)


nicolas = User.create!(
  email: "nicolas@example.com",
  password: "password",
  first_name: "Nicolas",
  last_name: "Filzi",
  username: "Nico",
  # address: "20 rue Lacour",
  points: 39,
  level: "apprentice",
  city: "Bordeaux",
  zip_code: "33000",
  country: "France",
  avatar: File.open(Rails.root.join("db/fixtures/avatars/nico_avatar.png"))
)

puts "Done with users seeds !"

puts "Creating places seeds ..."



first_place = Place.create!(
  mapmaster: marie_noelle,
  trashes_on_site: Place::TRASHES.sample(2),
  volume: 0,
  status: Place::STATUS.sample,
  # equipment: "wheelbarrow",
  address: "Le Hohneck, 68140 Stosswihr",
  # display_photo: File.open(Rails.root.join("db/fixtures/places/place1.jpeg")),
  mapmaster_photo: File.open(Rails.root.join("db/fixtures/places/place55.jpeg"))
)

second_place = Place.create!(
  mapmaster: marie_noelle,
  trashes_on_site: Place::TRASHES.sample(3),
  volume: 1,
  status: Place::STATUS.sample,
  # equipment: "gloves",
  address: "39150 Grande Rivière",
  # display_photo: File.open(Rails.root.join("db/fixtures/places/place3.jpeg")),
  mapmaster_photo: File.open(Rails.root.join("db/fixtures/places/place52.jpeg"))
)

third_place = Place.create!(
  mapmaster: ophelie,
  trashes_on_site: Place::TRASHES.sample(2),
  volume: 2,
  status: Place::STATUS.sample,
  # equipment: "bag",
  address: "73630 Le Chatelard",
  # display_photo: File.open(Rails.root.join("db/fixtures/places/place5.jpeg")),
  mapmaster_photo: File.open(Rails.root.join("db/fixtures/places/place53.jpeg"))
)

fourth_place = Place.create!(
  mapmaster: cecile,
  trashes_on_site: Place::TRASHES.sample(3),
  volume: 3,
  status: Place::STATUS.sample,
  # equipment: "rake",
  address: "26420 Saint-Julien-en-Vercors",
  # display_photo: File.open(Rails.root.join("db/fixtures/places/place7.jpeg")),
  mapmaster_photo: File.open(Rails.root.join("db/fixtures/places/place54.jpeg"))
)

fifth_place = Place.create!(
  mapmaster: nicolas,
  trashes_on_site: Place::TRASHES.sample(2),
  volume: 4,
  status: Place::STATUS.sample,
  # equipment: "wheelbarrow",
  address: "83630 Bauduen",
  # display_photo: File.open(Rails.root.join("db/fixtures/places/place9.jpeg")),
  mapmaster_photo: File.open(Rails.root.join("db/fixtures/places/place51.jpeg"))
)

sixth_place = Place.create!(
  mapmaster: ophelie,
  trashes_on_site: Place::TRASHES.sample(3),
  volume: 5,
  status: Place::STATUS.sample,
  # equipment: "gloves",
  address: "84400 Vaucluse",
  # display_photo: File.open(Rails.root.join("db/fixtures/places/place11.jpeg")),
  mapmaster_photo: File.open(Rails.root.join("db/fixtures/places/place56.jpeg"))
)

seventh_place = Place.create!(
  mapmaster: marie_noelle,
  trashes_on_site: Place::TRASHES.sample(2),
  volume: 0,
  status: Place::STATUS.sample,
  # equipment: "bag",
  address: "48400 Barre-des-Cévennes",
  # display_photo: File.open(Rails.root.join("db/fixtures/places/place13.jpeg")),
  mapmaster_photo: File.open(Rails.root.join("db/fixtures/places/place57.jpeg"))
)


eighth_place = Place.create!(
  mapmaster: ophelie,
  trashes_on_site: Place::TRASHES.sample(3),
  volume: 1,
  status: Place::STATUS.sample,
  # equipment: "rake",
  address: "15110 Saint-Urcize",
  # display_photo: File.open(Rails.root.join("db/fixtures/places/place15.jpeg")),
  mapmaster_photo: File.open(Rails.root.join("db/fixtures/places/place58.jpeg"))
)

nineth_place = Place.create!(
  mapmaster: cecile,
  trashes_on_site: Place::TRASHES.sample(2),
  volume: 2,
  status: Place::STATUS.sample,
  # equipment: "wheelbarrow",
  address: "19170 Tarnac",
  # display_photo: File.open(Rails.root.join("db/fixtures/places/place17.jpeg")),
  mapmaster_photo: File.open(Rails.root.join("db/fixtures/places/place59.jpeg"))
)

tenth_place = Place.create!(
  mapmaster: nicolas,
  trashes_on_site: Place::TRASHES.sample(3),
  volume: 3,
  status: Place::STATUS.sample,
  # equipment: "gloves",
  address: "87440 Marval",
  # display_photo: File.open(Rails.root.join("db/fixtures/places/place19.jpeg")),
  mapmaster_photo: File.open(Rails.root.join("db/fixtures/places/place60.jpeg"))
)


eleventh_place = Place.create!(
  mapmaster: ophelie,
  trashes_on_site: Place::TRASHES.sample(2),
  volume: 4,
  status: Place::STATUS.sample,
  # equipment: "bag",
  address: "05310 Freissinières",
  # display_photo: File.open(Rails.root.join("db/fixtures/places/place21.jpeg")),
  mapmaster_photo: File.open(Rails.root.join("db/fixtures/places/place61.jpeg"))
)

twelveth_place = Place.create!(
  mapmaster: marie_noelle,
  trashes_on_site: Place::TRASHES.sample(3),
  volume: 5,
  status: Place::STATUS.sample,
  # equipment: "rake",
  address: "05260 Champoléon",
  # display_photo: File.open(Rails.root.join("db/fixtures/places/place23.jpeg")),
  mapmaster_photo: File.open(Rails.root.join("db/fixtures/places/place62.jpeg"))
)

thirteenth_place = Place.create!(
  mapmaster: ophelie,
  trashes_on_site: Place::TRASHES.sample(2),
  volume: 0,
  status: Place::STATUS.sample,
  # equipment: "wheelbarrow",
  address: "38380 Saint-Pierre-de-Chartreuse",
  # display_photo: File.open(Rails.root.join("db/fixtures/places/place25.jpeg")),
  mapmaster_photo: File.open(Rails.root.join("db/fixtures/places/place63.jpeg"))
)

fourteenth_place = Place.create!(
  mapmaster: cecile,
  trashes_on_site: Place::TRASHES.sample(3),
  volume: 1,
  status: Place::STATUS.sample,
  # equipment: "gloves",
  address: "09140 Seix",
  # display_photo: File.open(Rails.root.join("db/fixtures/places/place27.jpeg")),
  mapmaster_photo: File.open(Rails.root.join("db/fixtures/places/place64.jpeg"))
)

fifteenth_place = Place.create!(
  mapmaster: nicolas,
  trashes_on_site: Place::TRASHES.sample(2),
  volume: 2,
  status: Place::STATUS.sample,
  # equipment: "bag",
  address: "65120 Luz-Saint-Sauveur",
  # display_photo: File.open(Rails.root.join("db/fixtures/places/place29.jpeg")),
  mapmaster_photo: File.open(Rails.root.join("db/fixtures/places/place65.jpeg"))
)

sixteenth_place = Place.create!(
  mapmaster: maylis,
  trashes_on_site: Place::TRASHES.sample(3),
  volume: 3,
  status: Place::STATUS.sample,
  # equipment: "rake",
  address: "64440 Laruns",
  # display_photo: File.open(Rails.root.join("db/fixtures/places/place31.jpeg")),
  mapmaster_photo: File.open(Rails.root.join("db/fixtures/places/place66.jpeg"))
)

puts "Done with places seeds !"

puts "Creating missions seeds ..."


first_mission = Mission.create!(
  place: first_place,
  date: '2019-12-02',
  captaingreen: marie_noelle,
  time_slot: "morning",
  mapmaster_photo: File.open(Rails.root.join("db/fixtures/places/place33.jpeg")),
  participation_level: 0,
  status: "planned",



)

second_mission = Mission.create!(
  place: second_place,
  date: '2020-01-02',
  captaingreen: ophelie,
  time_slot: "afternoon",
  mapmaster_photo: File.open(Rails.root.join("db/fixtures/places/place34.jpeg")),
  participation_level: 1,
  status: "on-going",


)

third_mission = Mission.create!(
  place: third_place,
  date: '2020-02-04',
  captaingreen: cecile,
  time_slot: "all-day",
  mapmaster_photo: File.open(Rails.root.join("db/fixtures/places/place35.jpeg")),
  participation_level: 2,
  status: "cancelled",


)

fourth_mission = Mission.create!(
  place: fourth_place,
  date: '2020-03-24',
  captaingreen: nicolas,
  time_slot: "morning",
  mapmaster_photo: File.open(Rails.root.join("db/fixtures/places/place36.jpeg")),
  participation_level: 3,
  status: "completed",


)

fifth_mission = Mission.create!(
  place: fifth_place,
  date: '2020-01-12',
  captaingreen: maylis,
  time_slot: "afternoon",
  mapmaster_photo: File.open(Rails.root.join("db/fixtures/places/place37.jpeg")),
  participation_level: 4,
  status: "planned",


)

sixth_mission = Mission.create!(
  place: sixth_place,
  date: '2020-02-11',
  captaingreen: marie_noelle,
  time_slot: "all-day",
  mapmaster_photo: File.open(Rails.root.join("db/fixtures/places/place38.jpeg")),
  participation_level: 5,
  status: "on-going",


)

seventh_mission = Mission.create!(
  place: seventh_place,
  date: '2020-01-16',
  captaingreen: ophelie,
  time_slot: "morning",
  mapmaster_photo: File.open(Rails.root.join("db/fixtures/places/place39.jpeg")),
  participation_level: 0,
  status: "cancelled",


)


eighth_mission = Mission.create!(
  place: eighth_place,
  date: '2020-03-18',
  captaingreen: cecile,
  time_slot: "afternoon",
  mapmaster_photo: File.open(Rails.root.join("db/fixtures/places/place40.jpeg")),
  participation_level: 1,
  status: "completed",


)

nineth_mission = Mission.create!(
  place: nineth_place,
  date: '2019-12-13',
  captaingreen: nicolas,
  time_slot: "all-day",
  mapmaster_photo: File.open(Rails.root.join("db/fixtures/places/place41.jpeg")),
  participation_level: 2,
  status: "planned",


)

tenth_mission = Mission.create!(
  place: tenth_place,
  date: '2019-12-20',
  captaingreen: maylis,
  time_slot: "morning",
  mapmaster_photo: File.open(Rails.root.join("db/fixtures/places/place42.jpeg")),
  participation_level: 3,
  status: "on-going",


)


eleventh_mission = Mission.create!(
  place: eleventh_place,
  date: '2020-03-02',
  captaingreen: marie_noelle,
  time_slot: "afternoon",
  mapmaster_photo: File.open(Rails.root.join("db/fixtures/places/place43.jpeg")),
  participation_level: 4,
  status: "on-going",


)

twelveth_mission = Mission.create!(
  place: twelveth_place,
  date: '2020-04-12',
  captaingreen: ophelie,
  time_slot: "all-day",
  mapmaster_photo: File.open(Rails.root.join("db/fixtures/places/place44.jpeg")),
  participation_level: 5,
  status: "completed",


)


eleventh_mission = Mission.create!(
  place: fourth_place,
  date: '2020-02-02',
  captaingreen: ophelie,
  time_slot: "afternoon",
  mapmaster_photo: File.open(Rails.root.join("db/fixtures/places/place43.jpeg")),
  participation_level: 2,
  status: "completed",
)

puts "Done with missions seeds !"

puts "Done with seeds..."
