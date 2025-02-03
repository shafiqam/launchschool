=begin
You want to create a nice interface that allows you to accurately describe the action you
want your program to perform. Create a method called spray_paint that can be called on an
object and will modify the color of the car.
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
end

car = MyCar.new(2020, 'Black', 'BMW')
puts car.color # Black
car.spray_paint('Red')
puts car.color # Red
