=begin
Use the each_with_index method to iterate through an array of your creation that prints
each index and value of the array.
=end

names = ['bob', 'joe', 'susan', 'margaret']
names.each_with_index do |name, index|
  # Formatting the index to show data as an ordered list
  puts "#{index + 1}. #{name.capitalize}"
end
