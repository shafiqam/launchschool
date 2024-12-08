=begin
Use the modulo operator, division, or a combination of both to take a 4 digit number
and find the digit in the: 1) thousands place 2) hundreds place 3) tens place 4) ones place
=end

num = 2345

thousands_place = num / 1000 # 2
num = num % 1000 # 345
# p thousands_place

hundreds_place = num / 100 # 3
num %= 100 # 45
# p hundreds_place

tens_place = num / 10 # 4
num %= 10 # 5
# p tens_place

ones_place = num / 1 # 5
num = num % 1 # 0
# puts ones_place

## OPTIMIZATION
# (num = num % 100) is same as (num %= 100)
p thousands_place, hundreds_place, tens_place, ones_place
