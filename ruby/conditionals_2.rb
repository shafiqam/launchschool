=begin
Write a method that takes a string as an argument. The method should return a new,
all-caps version of the string, only if the string is longer than 10 characters.
Example: change "hello world" to "HELLO WORLD".
(Hint: Ruby's String class has a few methods that would be helpful. Check the Ruby Docs!)
=end

def convert_string(str)
  if str.length > 10
    str.upcase
  else
    str
  end

  # NOT RECOMMENDED
  # if str.length > 10 then str.upcase else str end

  # OPTIMIZATION
  # (str.length > 10) ? str.upcase : str
end

puts convert_string('hello') # 'hello'
puts convert_string('helloworld') # 'helloworld'
puts convert_string('hello world') # 'HELLO WORLD'
