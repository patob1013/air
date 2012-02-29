# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).

Airport.destroy_all

Airport.create code: "ORD", city: "Chicago"
Airport.create :code => "MDW", :city => "Chicago"
Airport.create :code => "SFO", :city => "San Francisco"
Airport.create :code => "JFK", :city => "New York"

puts "We now have #{Airport.count} airports."

Flight.destroy_all

60.times do 
  
  airports = Airport.all.shuffle
  
  f = Flight.new
  f.departure_airport = airports.first
  f.arrival_airport = airports.last
  f.number = rand(100..9999)
  f.departs_at = Time.parse("#{rand(1..23)}:00")
  f.distance = rand(700..1500)
  
end

puts "We now have #{Flight.count} flights."










