=begin
Create a class called MyCar. When you initialize a new instance or object of the class,
allow the user to define some instance variables that tell us the year, color, and model
of the car. Create an instance variable that is set to 0 during instantiation of the object
to track the current speed of the car as well. Create instance methods that allow the car
to speed up, brake, and shut the car off.
=end

class MyCar
  attr_accessor :speed

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
car.speed_up(20)
puts car.speed # 20
car.speed_up(20)
puts car.speed # 40
car.brake(10)
puts car.speed # 30
car.shut_off
puts car.speed # 0
