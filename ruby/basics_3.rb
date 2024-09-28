=begin
Write a program that uses a hash to store a list of movie titles with the year they came out.
Then use the puts command to make your program print out the year of each movie to the screen.
The output for your program should look something like this.
1975
2004
2013
2001
1981
=end

movies = {
  cowboy: "1948",
  goldmine: "1960",
  'run fast': "1987"
}

puts movies[:cowboy]
puts movies[:goldmine]
puts movies[:'run fast']

## OPTIMIZATION
# p movies.keys
# p movies.values
