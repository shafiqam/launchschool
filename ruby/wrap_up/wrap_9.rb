=begin
Suppose you have a hash h = {a:1, b:2, c:3, d:4}
1. Get the value of key `:b`.
2. Add to this hash the key:value pair `{e:5}`
3. Remove all key:value pairs whose value is less than 3.5
=end

h = {a:1, b:2, c:3, d:4}
puts h[:b]

h[:e] = 5
puts h

h.delete_if { |k, v| v < 3.5 }
## ALTERNATE
# h.reject! { |k,v| v < 3.5 }
puts h
