=begin
What is a module? What is its purpose? How do we use them with our classes?
Create a module for the class you created in exercise 1 and include it properly.
=end

# Modules are used to methods than are reusable among many similar classes.
# It can be used within classes using the include method.
module Bounce
end

class Ball
  include Bounce
end

red_ball = Ball.new
