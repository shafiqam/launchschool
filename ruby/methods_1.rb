=begin
Write a program that prints a greeting message. This program should contain a method
called greeting that takes a name as its parameter and returns a string.
=end

def greeting(name = 'Stranger')
  "Hello, #{name}!"
end

puts greeting
puts greeting('Potter')
