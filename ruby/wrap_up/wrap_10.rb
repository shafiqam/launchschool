=begin
Can hash values be arrays? Can you have an array of hashes? (give examples)
=end

# Yes, to both. Examples are below.
complex_hash = { a: [true, false], b: [1, 2, 3], c: [2.5]}
complex_array = [ {a: true, b: false}, {int: 1, float: 2.5} ]

p complex_hash
p complex_array
