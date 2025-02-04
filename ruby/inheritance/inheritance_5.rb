=begin
Move all of the methods from the MyCar class that also pertain to the MyTruck class into
the Vehicle class. Make sure that all of your previous method calls are working when you
are finished.
=end

module Towable
  # can tow any weight upto 10,000 pounds
  def can_tow?(weight)
    weight <= 10000
  end
end

class Vehicle
  attr_accessor :speed, :color
  attr_reader :year, :model

  @@num_of_vehicles = 0

  def initialize(year, color, model)
    @year = year
    @color = color
    @model = model
    @speed = 0
    @@num_of_vehicles += 1
  end

  # accelerate
  def speed_up(num)
    self.speed += num
  end

  # decelerate
  def brake(num)
    self.speed -= num
  end

  # shut off
  def shut_off
    self.speed = 0
  end

  # spray paint
  def spray_paint(color)
    self.color = color
  end

  # CLASS METHODS

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

  # Pretty print the object information
  def to_s
    "This car is a #{year} #{color} #{model}"
  end
end

class MyTruck < Vehicle
  include Towable

  NUM_OF_DOORS = 2

  # Pretty print the object information
  def to_s
    "This truck is a #{year} #{color} #{model}"
  end
end

car = MyCar.new(2020, 'Black', 'BMW')
car.speed_up(20)
puts car.speed # 20
car.brake(10)
puts car.speed # 10
car.shut_off
puts car.speed # 0
puts car.color # Black
car.spray_paint('Red')
puts car.color # Red
puts car.year # 2020
puts car # This car is a 2020 Red BMW
MyCar.mileage(351, 13) # Mileage is 27 miles per gallon
Vehicle.count # Current vehicle count: 1
truck = MyTruck.new(2021, 'White', 'Ford')
Vehicle.count # Current vehicle count: 2
puts truck # This car is a 2021 White Ford
puts truck.can_tow?(5000) # true
puts truck.can_tow?(20000) # false
puts
puts "Vehicle Lookup:"
puts Vehicle.ancestors
puts
puts "MyCar Lookup:"
puts MyCar.ancestors
puts
puts "MyTruck Lookup:"
puts MyTruck.ancestors
