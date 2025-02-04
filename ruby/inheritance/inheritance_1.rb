=begin
Create a superclass called Vehicle for your MyCar class to inherit from and move the
behavior that isn't specific to the MyCar class to the superclass. Create a constant in your
MyCar class that stores information about the vehicle that makes it different from other types
of Vehicles. Then create a new class called MyTruck that inherits from your superclass that
also has a constant defined that separates it from the MyCar class in some way.
=end

class Vehicle
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
