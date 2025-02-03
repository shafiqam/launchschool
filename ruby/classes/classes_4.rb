=begin
Add a class method to your MyCar class that calculates the gas mileage (i.e. miles per
gallon) of any car.
=end

class MyCar
  attr_accessor :speed, :color
  attr_reader :year

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
end

MyCar.mileage(351, 13) # Mileage is 27 miles per gallon
