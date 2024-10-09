=begin
Given the following code...

x = "hi there"
my_hash = {x: "some value"}
my_hash2 = {x => "some value"}

What's the difference between the two hashes that were created?
=end

x = "hi there"
my_hash = {x: "some value"}
my_hash2 = {x => "some value"}

# key x in the first is a symbol
p my_hash
puts my_hash[:x]

# key x in the second is a string value assigned to the variable
puts
p my_hash2
puts my_hash2[x] # is same as my_hash2["hi there"]
