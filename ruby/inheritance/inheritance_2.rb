=begin
Add a class variable to your superclass that can keep track of the number of objects created
that inherit from the superclass. Create a method to print out the value of this class variable
as well.
=end

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
  NUM_OF_DOORS = 2
end

MyCar.new
Vehicle.count # Current vehicle count: 1

MyTruck.new
Vehicle.count # Current vehicle count: 2
