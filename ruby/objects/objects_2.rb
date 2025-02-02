=begin
What is a module? What is its purpose? How do we use them with our classes?
Create a module for the class you created in exercise 1 and include it properly.
=end

# Modules are used to define methods that are reusable among many similar classes.
# Modules have to be included, since it cannot be instantiated.
# It can be used within classes using the include method.

module Bounceable
end

class Ball
  include Bounceable
end

red_ball = Ball.new
