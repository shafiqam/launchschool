=begin
Why does the following code...

def execute(block)
  block.call
end

execute { puts "Hello from inside the execute method!" }

Give us the following error when we run it?

block.rb1:in `execute': wrong number of arguments (0 for 1) (ArgumentError)
from test.rb:5:in `<main>'
=end

# Errors with the ArgumentError, because the block needs an ampersand (&) to be passed to a method.
