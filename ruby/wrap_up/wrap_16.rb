=begin
Challenge: In exercise 11, we manually set the contacts hash values one by one. Now,
programmatically loop or iterate over the contacts hash from exercise 11, and populate the
associated data from the contact_data array. Hint: you will probably need to iterate over
([:email, :address, :phone]), and some helpful methods might be the Array shift and first
methods. Note that this exercise is only concerned with dealing with 1 entry in the contacts
hash, like this:

contact_data = ["joe@email.com", "123 Main st.", "555-123-4567"]
contacts = {"Joe Smith" => {}}

As a bonus, see if you can figure out how to make it work with multiple entries in the contacts
hash. Exercises marked as challenges can be very difficult. Don't get discouraged if you can't
complete it, but do make the attempt. Even if you can't solve the exercise, be sure to read
through the solution, if one is provided.
=end

contact_data = ["joe@email.com", "123 Main st.", "555-123-4567"]
contacts = {"Joe Smith" => {}}
data_keys = [:email, :address, :phone]

contacts.each do |name, hash|
  data_keys.each do |key|
    hash[key] = contact_data.shift
  end
end

p contacts
puts

# For multiple entries case
contact_data = [["joe@email.com", "123 Main st.", "555-123-4567"],
            ["sally@email.com", "404 Not Found Dr.", "123-234-3454"]]
contacts = {"Joe Smith" => {}, "Sally Johnson" => {}}

contacts.each_with_index do |(name, hash), index|
  data_keys.each do |key|
    hash[key] = contact_data[index].shift
  end
end

p contacts
