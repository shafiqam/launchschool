=begin
1) Edit the method definition in exercise #4 so that it does print words on the screen.
2) What does it return now?

def scream(words)
  words = words + "!!!!"
  return
  puts words
end

scream("Yippeee")
=end

# 1. remove the return statement
def scream(words)
  words = words + "!!!!"
  puts words
end

scream("Yippeee")

# 2. It returns a nil, since puts (last evaluated statement here) returns a nil
