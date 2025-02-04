=begin
Print to the screen your method lookup for the classes that you have created.
=end

module Towable
  # can tow any weight upto 10,000 pounds
  def can_tow?(weight)
    weight <= 10000
  end
end

class Vehicle
  @@num_of_vehicles = 0

  def initialize
    @@num_of_vehicles += 1
  end

  # prints number of vehicles
  def self.count
    puts "Current vehicle count: #{@@num_of_vehicles}"
  end

  # miles per gallon
  def self.mileage(miles, gallons)
    mileage = (miles / gallons)
    puts "Mileage is #{mileage} miles per gallon"
  end
end

class MyCar < Vehicle
  NUM_OF_DOORS = 4
end

class MyTruck < Vehicle
  include Towable

  NUM_OF_DOORS = 2
end

puts "Vehicle Lookup:"
puts Vehicle.ancestors
puts

puts "MyCar Lookup:"
puts MyCar.ancestors
puts

puts "MyTruck Lookup:"
puts MyTruck.ancestors
