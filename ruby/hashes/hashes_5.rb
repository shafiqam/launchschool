=begin
What method could you use to find out if a Hash contains a specific value in it?
Write a program that verifies that the value is within the hash.
=end

person = {name: 'Bob', occupation: 'web developer', hobbies: 'painting'}

puts person.value?('web developer') # true
puts person.value?('Web developer') # false
