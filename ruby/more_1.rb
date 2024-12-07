=begin
Write a program that checks if the sequence of characters "lab" exists in the following strings.
If it does exist, print out the word.
"laboratory"
"experiment"
"Pans Labyrinth"
"elaborate"
"polar bear"
=end

strings = ['laboratory', 'experiment', 'Pans Labyrinth', 'elaborate', 'polar bear']
strings.each do |str|
  puts str if str =~ /lab/

  ## ALTERNATE
  # puts str if /lab/.match(str)
end
