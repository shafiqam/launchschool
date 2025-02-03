=begin
Override the to_s method to create a user friendly print out of your object.
=end

class MyCar
  attr_accessor :speed, :color
  attr_reader :year, :model

  def initialize(year, color, model)
    @year = year
    @color = color
    @model = model
    @speed = 0
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

  # miles per gallon
  def self.mileage(miles, gallons)
    mileage = (miles / gallons)
    puts "Mileage is #{mileage} miles per gallon"
  end

  # Pretty print the object information
  def to_s
    "This car is a #{year} #{color} #{model}"
  end
end

car = MyCar.new(2020, 'Black', 'Aston Martin')
puts car # This car is a 2020 Black Aston Martin
