=begin
Create a module that you can mix in to ONE of your subclasses that describes a behavior
unique to that subclass.
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

truck = MyTruck.new
puts truck.can_tow?(5000) # true
puts truck.can_tow?(20000) # false
