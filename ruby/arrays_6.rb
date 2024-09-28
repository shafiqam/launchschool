=begin
You run the following code...
names = ['bob', 'joe', 'susan', 'margaret']
names['margaret'] = 'jody'

...and get the following error message:
TypeError: no implicit conversion of String into Integer
  from (irb):2:in `[]='
  from (irb):2
  from /Users/username/.rvm/rubies/ruby-2.5.3/bin/irb:12:in `<main>'

What is the problem and how can it be fixed?
=end

# When updating the array, you must use the index to reference the element and update its value.
# Not the value itself. The following code will work.

names = ['bob', 'joe', 'susan', 'margaret']
names[3] = 'jody'

# p command prints out the raw object vs puts prints each element in a newline
p names # ["bob", "joe", "susan", "jody"]
