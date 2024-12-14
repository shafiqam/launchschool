=begin
Combined exercises from 1 to 6.
=end

# Use the each method of Array to iterate over [1, 2, 3, 4, 5, 6, 7, 8, 9, 10], and print
# out each value.
arr = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
arr.each { |n| puts n }
puts

# Same as above, but only print out values greater than 5.
arr.each { |n| puts n if n > 5 }
puts

# Now, using the same array from #2, use the select method to extract all odd numbers
# into a new array.
arr2 = arr.select { |n| n.odd? }
p arr2
puts

# Append 11 to the end of the original array. Prepend 0 to the beginning.
arr.push 11
arr.unshift 0
p arr
puts

# In array of #4, get rid of 11. And append a 3.
arr.pop
arr << 3
p arr
puts

# Get rid of duplicates without specifically removing any one value.
arr.uniq!
p arr
