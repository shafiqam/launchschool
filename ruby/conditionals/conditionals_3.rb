=begin
Write a program that takes a number from the user between 0 and 100 and reports back
whether the number is between 0 and 50, 51 and 100, or above 100.
=end

puts "Enter a number between 0 to 100"
number = gets.chomp.to_i

if number >= 0 && number <= 50
  puts "#{number} is between 0 to 50"
elsif number >= 51 && number <= 100
  puts "#{number} is between 51 to 100"
elsif number > 100
  puts "#{number} is above 100"
else
  puts "#{number} not in expected range"
end
