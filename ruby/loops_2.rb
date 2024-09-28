=begin
Write a while loop that takes input from the user, performs an action, and only stops
when the user types "STOP". Each loop can get info from the user.
=end

input = ''
signals = %w[red yellow green] # string array can be represented this way

while input != 'STOP'
  # sample selects one random element of the array
  puts "#{signals.sample} means ...?"
  input = gets.chomp.upcase
end
