=begin
What does the each method in the following program return after it is finished executing?

x = [1, 2, 3, 4, 5]
x.each do |a|
  a + 1
end
=end

# [1, 2, 3, 4, 5] since x has been traversed but not updated, the array remains the same.
