=begin
Write a method called age that calls a private method to calculate the age of the vehicle.
Make sure the private method is not available from outside of the class. You'll need to use
Ruby's built-in Time class to help.
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

  # prints the age
  def age
    puts "This #{self.model} is #{years_old} years old"
  end

  private

  def years_old
    today = Time.now
    today.year - self.year
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
car.age # This BMW is 5 years old
truck = MyTruck.new(2021, 'White', 'Ford')
truck.age # This Ford is 4 years old
