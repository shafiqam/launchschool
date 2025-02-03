=begin
When running the following code...

class Person
  attr_reader :name
  def initialize(name)
    @name = name
  end
end
bob = Person.new("Steve")
bob.name = "Bob"

We get the following error...

test.rb:9:in `<main>': undefined method `name=' for
  #<Person:0x007fef41838a28 @name="Steve"> (NoMethodError)

Why do we get this error and how do we fix it?
=end

# attr_reader only creates the getter method. That needs to change the attr_accessor, which
# creates both the getter and setter methods.

class Person
  attr_accessor :name

  def initialize(name)
    @name = name
  end
end

bob = Person.new("Steve")
puts bob.name # Steve
bob.name = "Bob"
puts bob.name # Bob
