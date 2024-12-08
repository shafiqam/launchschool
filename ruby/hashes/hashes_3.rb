=begin
Using some of Ruby's built-in Hash methods, write a program that loops through
a hash and prints all of the keys. Then write a program that does the same thing
except printing the values. Finally, write a program that prints both.
=end

pets = { cat: "crookshanks", owl: "hedwig", rat: "scabbers" }

# iterate through keys using each_key or keys.each
puts "Types of pets:"
pets.each_key do |key|
  puts key
end

# iterate through values using each_value or values.each
puts
puts "Names of pets:"
pets.each_value do |value|
  puts value
end

# iterate through key-value pair using each
puts
pets.each do |key, value|
  puts "The name of the #{key} is #{value.capitalize}."
end
