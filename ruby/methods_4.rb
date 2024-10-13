=begin
What will the following code print to the screen?

def scream(words)
  words = words + "!!!!"
  return
  puts words
end

scream("Yippeee")
=end

# It will not print anything, since within the method, words variable is modified but
# returned from method before printing it out.
