=begin
Add an accessor method to your MyCar class to change and view the color of your car. Then
add an accessor method that allows you to view, but not modify, the year of your car.
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
end

car = MyCar.new(2020, 'Black', 'BMW')
puts car.color # Black
car.color = 'Red'
puts car.color # Red
puts car.year # 2020
