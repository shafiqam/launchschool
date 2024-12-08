=begin
Write down whether the following expressions return true or false or raise an error.
Then, type the expressions into irb to see the results.

(32 * 4) >= "129"
847 == '847'
'847' < '846'
'847' > '846'
'847' > '8478'
'847' < '8478'
=end

# Error: cannot compare string with integer
# False since checking equality validity, and not comparison (leads to error) validity
# False since '7' char is not less than '6' char
# True  since '7' char is greater than '6' char
# False since '' char is not greater than '8' char
# True  since '' char is less than '8' char
