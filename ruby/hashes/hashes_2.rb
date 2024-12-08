=begin
Look at Ruby's merge method. Notice that it has two versions. What is the difference
between merge and merge!? Write a program that uses both and illustrate the differences.
=end

hash1 = { first_name: "Harry", last_name: "Potter" }
hash2 = { age: 10, location: "London" }

puts hash1.merge(hash2) # merges hash1 and hash2, but doesn't update the original hash1
puts hash1
puts
puts hash1.merge!(hash2) # merges hash1 and hash2, and updates the original hash1 (destructive method)
puts hash1
