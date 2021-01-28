# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

a = Airport.create(code: "SFO")
b = Airport.create(code: "NYC")
c = Airport.create(code: "OMA")
d = Airport.create(code: "CHI")
e = Airport.create(code: "BER")
f = Airport.create(code: "GEN")

f1 = Flight.create(from_airport: a, to_airport: b, start_time: '2021-01-30', duration: 120)
f2 = Flight.create(from_airport: a, to_airport: b, start_time: '2021-01-30', duration: 110)
f3 = Flight.create(from_airport: a, to_airport: b, start_time: '2021-01-30', duration: 100)
f4 = Flight.create(from_airport: a, to_airport: c, start_time: '2021-01-30', duration: 160)
f5 = Flight.create(from_airport: a, to_airport: d, start_time: '2021-01-30', duration: 160)
f6 = Flight.create(from_airport: a, to_airport: e, start_time: '2021-01-30', duration: 160)
f7 = Flight.create(from_airport: a, to_airport: f, start_time: '2021-02-10', duration: 160)
f8 = Flight.create(from_airport: c, to_airport: d, start_time: '2021-01-30', duration: 80)
f9 = Flight.create(from_airport: d, to_airport: e, start_time: '2021-02-10', duration: 540)
f10 = Flight.create(from_airport: e, to_airport: f, start_time: '2021-02-5', duration: 40)
f11 = Flight.create(from_airport: c, to_airport: e, start_time: '2021-02-5', duration: 600)
f12 = Flight.create(from_airport: f, to_airport: a, start_time: '2021-01-30', duration: 700)
f13 = Flight.create(from_airport: b, to_airport: a, start_time: '2021-01-30', duration: 120)