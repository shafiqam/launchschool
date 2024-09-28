=begin
Below we have given you an array and a number. Write a program that checks to
see if the number appears in the array.
arr = [1, 3, 5, 7, 9, 11]
number = 3
=end

arr = [1, 3, 5, 7, 9, 11]
number = 3

arr.each do |n|
  if n == number
    puts "#{number} is in the array"

    # exit out of loop once number is found
    # unnecessary to iterate through remaining values
    break
  end
end

## OPTIMIZATION
## uses postfix if conditional, easier to read
# puts "#{number} is in the array" if arr.include?(number)
