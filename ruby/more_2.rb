=begin
What will the following program print to the screen? What will it return?

def execute(&block)
  block
end

execute { puts "Hello from inside the execute method!" }
=end

# Nothing. The method needs to call the block using `block.call` to execute the block argument.
# It returns a Proc object, since the block was never executed.
