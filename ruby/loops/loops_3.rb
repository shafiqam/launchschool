=begin
Write a method that counts down to zero using recursion.
=end

def countdown(n)
  if n < 0
    puts "cannot countdown a negative number #{n}"
    return
  end

  puts n
  countdown(n-1) if n > 0
end

countdown(3)
countdown(-1)
countdown(0)
