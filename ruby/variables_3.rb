=begin
Add another section onto name.rb that prints the name of the user 10 times.
You must do this without explicitly writing the puts method 10 times in a row.
Hint: you can use the times method to do something repeatedly.
=end

puts "What is your name?"
name = gets.chomp

10.times { |i| puts name + (i+1).to_s }

## Use do/end block for multiple lines of code AND curly braces {} for single line of code
# 10.times do |i|
#   name_count = name + (i+1).to_s
#   puts name_count
# end
