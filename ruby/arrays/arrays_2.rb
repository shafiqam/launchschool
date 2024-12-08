=begin
What will the following programs return? What is the value of arr after each?
1. arr = ["b", "a"]
   arr = arr.product(Array(1..3))
   arr.first.delete(arr.first.last)

2. arr = ["b", "a"]
   arr = arr.product([Array(1..3)])
   arr.first.delete(arr.first.last)
=end

# FIRST: 1 since delete returns what was deleted. In this case, arr.first is ["b", 1] and 1 was deleted.
# SECOND: [1, 2, 3]. In this case, arr.first is ["b", [1, 2, 3]] and [1, 2, 3] was deleted.
