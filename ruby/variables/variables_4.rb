=begin
Modify name.rb again so that it first asks the user for their first name, saves it into a variable,
and then does the same for the last name. Then outputs their full name all at once.
=end

puts "What is your first name?"
first = gets.chomp
puts "What is your last name?"
last = gets.chomp

puts 'Your full name is ' + first + ' ' + last
