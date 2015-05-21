require "pry"


require_relative 'apartment'
require_relative 'building'
require_relative 'tenants'


building_one = Building.new floors: 6, address: "18 Shoreham close", num_of_apartments: 12, age: 47, concierge: false 

a_one = Apartment.new price: 3000, occupied: false, balcony: true, sqft: 2700, bedrooms: 4, bathrooms: 2
a_two = Apartment.new price: 2000, occupied: false, balcony: false, sqft: 2000, bedrooms: 2, bathrooms: 1
a_three = Apartment.new price: 2500, occupied: false, balcony: true, sqft: 3000, bedrooms: 4, bathrooms: 2

[a_one, a_two, a_three].each { |appt| building_one.apartments << appt }

t1 = Tenants.new name: 'willy wallace', age: 27, sex: 'male'
t2 = Tenants.new name: 'willy smith', age: 40, sex: 'male'
t3 = Tenants.new name: 'wilma flintstone', age: 60, sex: 'female'
t4 = Tenants.new name: 'fred flintstone', age: 64, sex: 'male'

[t1, t2].each { |tenant| a_one.tenants << tenant }
[t3, t4].each { |tenant| a_two.tenants << tenant }


binding.pry
nil   